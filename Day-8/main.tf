provider "aws" {
  region = "ap-south-2"
}

   
module "ec2-instance_example_complete" {
  source = "git::https://github.com/NagaTechOps/Terraform.git//Day-3/modules/Ec2?ref=371e0cf92d409e41f97f0985d199281c4fa0121c"
  ami ="ami-02774d409be696d81"
  instance_type ="t3.micro"
}