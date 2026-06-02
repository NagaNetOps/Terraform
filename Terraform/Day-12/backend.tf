terraform {
  backend "s3" {
    region = "ap-south-2"
    key = "Ganapathi/terraform1.tfstate"
    bucket = "ganapathi-terraform-demo-bucket-12345"
  }
}