resource "aws_instance" "my_ec2" {
  ami           = "ami-01a00762f46d584a1"  # Amazon Linux 2 (ap-south-1)
  instance_type = "t3.micro"
  user_data     = file("userdata.sh")

  tags = {
    Name = "prod-app-server"
  }
}

