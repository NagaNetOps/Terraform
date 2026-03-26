provider "aws" {
  region = "ap-south-2"
}

variable "ami" {
  description = "value of the instance"
}

variable "instance_type" {
  description = "value of the instance type"
}
resource "aws_instance" "example" {
  ami = var.ami
  instance_type = var.instance_type
}