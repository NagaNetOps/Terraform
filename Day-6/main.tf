provider "aws" {
  region = "ap-south-2"
}

module "Ec2" {
  source = "./modules/EC2-instance"
  ami ="ami-02774d409be696d81"
  instance_type ="t3.micro"
}
