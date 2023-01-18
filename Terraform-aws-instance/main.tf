
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

# providers block configures the specific proider in this case aws

provider "aws" {
  region = "us-east-1"
}

#resources block defines the components of the infrastructure in this case this are the resources we are specifing to turn up an ec2 instance

resource "aws_instance" "app_server" {
  ami           = "ami-0b5eea76982371e91"
  instance_type = "t2.micro"

  tags = {
    Name = "TestAppServerInstance"
  }
}
