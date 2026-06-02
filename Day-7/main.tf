provider "aws" {
  region = "ap-south-2"
}

resource "aws_key_pair" "example" {
  key_name   = "terraform-keypair"
  public_key = file("~/.ssh/id_ed25519.pub")
}

resource "aws_vpc" "myvpc" {
  cidr_block = var.cidr
}

resource "aws_subnet" "sub1" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "50.0.0.0/24"
  availability_zone       = "ap-south-2a"
  map_public_ip_on_launch = true
}

resource "aws_internet_gateway" "internet-gateway" {
  vpc_id = aws_vpc.myvpc.id
}

resource "aws_route_table" "Route-Table" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet-gateway.id
  }
}

resource "aws_route_table_association" "Route-tabel1" {
  subnet_id      = aws_subnet.sub1.id
  route_table_id = aws_route_table.Route-Table.id
}

resource "aws_security_group" "SG" {
  name   = "web"
  vpc_id = aws_vpc.myvpc.id

  ingress {
    description = "HTTP from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "SG"
  }
}