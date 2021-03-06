terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16.0"
    }
  }
} 

provider "aws" {
  region = "us-east-1"
}


/*
=======


>>>>>>> d7bdeb571225aadb55fa2092e3aeb1a0fa07a37d
terraform {
  backend "s3" {
    bucket = "vstaslon"
    key    = "dev/test/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "state_lock"
  }
}
*/

resource "aws_instance" "ubuntu" {
  ami = "ami-0022f774911c1d690"
  instance_type = "t2.micro"
  key_name = "DevopsIBA"
  vpc_security_group_ids = ["sg-011dc925d970e5502"]

  tags = {

    Name = "remove"
    
  }
}


output "server_id" {
  value = aws_instance.ubuntu.id
}

