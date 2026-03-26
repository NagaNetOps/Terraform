provider "aws" {
  region = "ap-south-2"
}


resource "aws_instance" "example" {
    instance_type = var.instance_type
    ami = var.ami
    key_name = var.key_name  
     tags = {
      Name = "example"
    }
}