terraform {
  backend "s3" {
    bucket = "ganapathi-terraform-demo-bucket-12345"
    key    = "Ganapathi/terraform.tfstate"
    region = "ap-south-2"
  }
}