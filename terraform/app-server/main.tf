terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  #Encryption example
  root_block_device {
      encrypted = true
  }

  #Monitoring example
  monitoring    = true


  #EBS Optimization example
  ebs_optimized = true
  
  #Metadata options example
  metadata_options {
      http_endpoint = "disabled"
  }

  tags = {
    Name = "Vulnerable PHP Server"
  }
}
