provider "aws" {
  region = "ap-south-2"
}

 resource "aws_vpc" "myvpc" {
   cidr_block = "50.0.0.0/16"
 
   tags = {
    Name = "test-vpc"
  }
}
 resource "aws_subnet" "sub1" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "50.0.0.0/24"
  availability_zone       = "ap-south-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "my-public-subnet-2a"
  }
}
resource "aws_subnet" "sub2" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "50.0.1.0/24"
  availability_zone       = "ap-south-2b"
  map_public_ip_on_launch = true

  tags = {
    Name = "my-public-subnet-2b"
  }
}
resource "aws_subnet" "sub3" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "50.0.2.0/24"
  availability_zone       = "ap-south-2a"

  tags = {
    Name = "Application-2a"
  }
}
resource "aws_subnet" "sub4" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "50.0.3.0/24"
  availability_zone       = "ap-south-2b"

  tags = {
    Name = "Application-2b"
  }
}
resource "aws_subnet" "sub5" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "50.0.4.0/24"
  availability_zone       = "ap-south-2a"

  tags = {
    Name = "DB-2a"
  }
}

resource "aws_subnet" "sub6" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "50.0.5.0/24"
  availability_zone       = "ap-south-2b"

  tags = {
    Name = "DB-2b"
  }
}
resource "aws_internet_gateway" "internet-gateway" {
  vpc_id = aws_vpc.myvpc.id
  tags = {
    Name = "test-vpc IGW"
  }
}
resource "aws_route_table" "Route-Table1" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet-gateway.id
  }
   tags = {
    Name = "test-vpc_Public_RT"
  }
 
}
resource "aws_route_table" "Route-Table2" {
  vpc_id = aws_vpc.myvpc.id
  
   tags = {
    Name = "test-vpc_Private_RT"
  }
}

resource "aws_route_table_association" "Public_subnet1" {
  subnet_id      = aws_subnet.sub1.id
  route_table_id = aws_route_table.Route-Table1.id
}
resource "aws_route_table_association" "public_subnet2" {
  subnet_id      = aws_subnet.sub2.id
  route_table_id = aws_route_table.Route-Table1.id
}
resource "aws_route_table_association" "private_subnet1" {
  subnet_id      = aws_subnet.sub3.id
  route_table_id = aws_route_table.Route-Table2.id
}

resource "aws_route_table_association" "private_subnet2" {
  subnet_id      = aws_subnet.sub4.id
  route_table_id = aws_route_table.Route-Table2.id
}

resource "aws_route_table_association" "private_subnet3" {
  subnet_id      = aws_subnet.sub5.id
  route_table_id = aws_route_table.Route-Table2.id
}

resource "aws_route_table_association" "private_subnet4" {
  subnet_id      = aws_subnet.sub6.id
  route_table_id = aws_route_table.Route-Table2.id
}
