provider "aws" {
  region = "ap-south-2"
  alias  = "ap-south-2"
}

resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type
  provider      = aws.ap-south-2
}
