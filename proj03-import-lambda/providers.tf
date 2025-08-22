terraform {
  required_version = "~> 1.5.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    archive = {
      source  = "hashicorp/archive"
      version = "~> 2.0"
    }
  }
  # backend "s3" {
  #   bucket = "terraform-course-willdutcher-remote-backend"
  #   key    = "proj03-import-lambda/state.tfstate"
  #   region = "us-east-1"
  # }
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
      Project   = "proj03-import-lambda"
    }
  }
}