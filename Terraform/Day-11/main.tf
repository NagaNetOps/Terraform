provider "aws" {
  region = "ap-south-2"
}

resource "aws_instance" "example" {
  ami ="ami-02774d409be696d81"
  instance_type = "t3.micro"
  key_name = aws_key_pair.example.key_name

}
resource "aws_key_pair" "example" {
    key_name = "terraform-demo"
    public_key = file("~/.ssh/id_ed25519.pub")
}