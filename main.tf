terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "tf-ec2" {
  ami           = var.ami_id
  key_name = var.key_name
  instance_type = var.instance_type
 // vpc_security_group_ids = ["sg-0d6814aee52f143cd"]
  tags= {
    Name = var.tag_name
  }
}


resource "aws_eip" "tf-ec2" {
  vpc      = true
  instance = aws_instance.tf-ec2.id
tags= {
    Name = "my_elastic_ip"
  }
}
