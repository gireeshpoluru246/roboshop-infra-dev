terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.70.0"
    }
  }
  backend "s3" {
     bucket       = "terraform-remote-state-file-bucket-1-dev"
    key          = "vpc-dev.tfstate" # name of the file inside bucket.
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true # This is new feature added in terraform. only one user can write the state file at a time.
  }
}


provider "aws" {
  region = var.aws_region
}