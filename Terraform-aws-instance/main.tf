
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

# providers block configures the specific provider in this case aws

provider "aws" {
  region = "us-east-1"
}

#resources block defines the components of the infrastructure in this case this are the resources we are specifing to turn up an ec2 instance

resource "aws_instance" "app_server" {
  ami           = "ami-0b5eea76982371e91"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
#    Name = "TestAppServerInstance"
    
    
 #for looping edit example to the name of istance   
resource "aws_instance" "example" {
  count = 3
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"

  for_each = toset(range(0, count))
  tags = {
    Name = "example-${each.value}"
  }
}
  }
}
