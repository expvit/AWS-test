provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ubuntu" {
  ami = "ami-0022f774911c1d690"
  instance_type = "t2.micro"
  key_name = "DevopsIBA"
  vpc_security_group_ids = ["sg-011dc925d970e5502"]

  tags = {

    Name = "remove"
    
  }
}