terraform {
  required_version = ">= 0.13"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
     # version = ">= 3.45"
    }
  }
  backend "s3" {
    bucket         = "knmytestbucket"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    }
}
provider "aws" {
  region              = "us-east-1"
}
provider "aws" {
  region              = "us-west-2"
  alias               = "replica"
}