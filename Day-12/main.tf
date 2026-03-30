provider "aws" {
  region = "ap-south-2"
}

resource "aws_key_pair" "example1" {
    key_name = "terraform-demo"
    public_key = file("~/.ssh/id_ed25519.pub")
}
resource "aws_instance" "example" {
  ami = var.ami
  instance_type = var.instance_type
  key_name=aws_key_pair.example1.key_name
    tags = {
      Name="my_instance"
    }
}
module "vpc" {
  source = "../Day-3/modules/VPC"
}
