provider "aws" {
  region = "ap-south-2"
}

module "vpc" {
  source = "../Day-3/modules/VPC"
}

module "ec2" {
  source = "../Day-3/modules/EC2"
    ami ="ami-02774d409be696d81"
  instance_type ="t3.micro"
}