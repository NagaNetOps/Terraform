provider "aws" {
  region = "ap-south-2"
  alias = "ap-south-2"
}

module "Ec2" {
    source = "./modules/Ec2"
  ami ="ami-02774d409be696d81"
  instance_type ="t3.micro"
}