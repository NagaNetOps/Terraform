terraform {
  backend "s3" {
    region = "ap-south-2"
    bucket = "ganapathi-terraform-demo-bucket-12345"
    key = "Ganapathi/terrafor.tfstate"
  }
}