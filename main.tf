terraform {
  cloud {
    organization = "ghassene_terraform_cloud"

    workspaces {
      name = "terraform_poc"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "ghassene_bucket" {
  bucket = "ghassene-terraform-poc-bucket-1"
  acl    = "private"
}
