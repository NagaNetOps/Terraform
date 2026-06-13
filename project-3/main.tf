provider "aws" {
  region = "ap-south-2"
}

resource "aws_instance" "server-01" {
  ami           = "ami-0199ac7c9fbf9ed83"
  instance_type = "t3.micro"
  key_name      = aws_key_pair.test_key.key_name

  user_data = <<-EOF
              #!/bin/bash
              apt update -y
              apt install apache2 -y
              systemctl enable apache2
              systemctl start apache2
              echo "<h1>Hello from Terraform EC2</h1>" > /var/www/html/index.html
              EOF
  tags = {
    Name = "server-01"
  }

}

resource "aws_key_pair" "test_key" {
  key_name   = "my_key"
  public_key = file("C:/Users/Nagaganapathi/.ssh/id_ed25519.pub")
}


