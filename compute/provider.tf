terraform {
  required_version = "~> 1.3.7"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.55.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "access key"
  secret_key = "secret access key"
}


# Create a VPC
resource "aws_vpc" "projectA-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "main"
  }
}