terraform {
  required_version = "~> 1.5.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  #   backend "s3" {
  #     bucket = "terraform-course-willdutcher-remote-backend"
  #     key    = "16-state-manipulation/state.tfstate"
  #     region = "us-east-1"
  #   }
}

provider "aws" {
  region = "us-east-1"
}