provider "aws" {
  region = "ap-south-2"
}

resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type
  provider      = aws.ap-south-2
  key_name=aws_key_pair.example1.key_name
    tags = {
    Name = "test-ec2"
  }
}
resource "aws_key_pair" "example1" {
    key_name = "test-keypair"
    public_key = file("~/.ssh/id_ed25519.pub")
}