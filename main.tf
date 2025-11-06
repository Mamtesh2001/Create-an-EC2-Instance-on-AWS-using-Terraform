terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.10.0"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"
  access_key = "<your access_key>"
  secret_key = "<your_secret_key"
}

resource "aws_instance" "web" {
  ami           = "ami-066eb5725566530f0"
  instance_type = "t3.micro"

  tags = {
    Name = "first_ec2"
  }
}
resource "aws_instance" "web2" {
  ami           = "ami-066eb5725566530f0"
  instance_type = "t3.micro"

  tags = {
    Name = "second_ec2"
  }
}
