# Terraform Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.69.1"
    }
  }

  required_version = ">= 1.0"
}

# Provider Block
provider "aws" {
  region = "us-east-1"
}

# Resource Block
resource "aws_instance" "testing_ec2" {
  ami           = "ami-0b6d9d3d33ba97d99"
  instance_type = "c7i-flex.large"

  tags = {
    Name = "Terraform-EC2"
  }
}