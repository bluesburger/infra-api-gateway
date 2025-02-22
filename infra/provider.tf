provider "aws" {
  region = var.aws_region
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "bb-ordering-system-production"
    key    = "apigtw-bb/terraform.tfstate"
    region = "us-east-1"
  }
}
