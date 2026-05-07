# Terraform Configuration Block
terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# AWS Provider Configuration
provider "aws" {
  region = "ap-south-1"
}

# S3 Bucket Resource
resource "aws_s3_bucket" "demo_bucket" {
  bucket = "terraform-hands-on-ravikiran-001"

  tags = {
    Name = "Terraform S3 Bucket"
  }
}
