resource "aws_s3_bucket" "Devopssupp_bucket" {
  bucket = "Devopssupp_bucket"
  acl    = "private"

  tags = {
    Name        = "Devopssupp_s3_bucket"
    Environment = "Dev"
  }
}

module "s3_bucket" {
  source = "s3::https://s3-eu-east-1.amazonaws.com/examplecorp-terraform-modules/vpc.zip"
  region = "us-east-1"
  }