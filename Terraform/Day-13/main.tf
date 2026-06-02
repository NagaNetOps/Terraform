provider "aws" {
  region = "ap-south-2"
}


resource "aws_key_pair" "Ansible_demo" {
  key_name = "Ansible"
  public_key = file("~/.ssh/id_ed25519.pub")
  
}

resource "aws_instance" "Ansible" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = aws_key_pair.Ansible_demo.key_name
   
  tags = {
    Name = "Ansbile"
  }
}

output "public-ip-address" {
  value = aws_instance.Ansible.public_ip
}