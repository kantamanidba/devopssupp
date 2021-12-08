resource "aws_s3_bucket" "Devopssupp_bucket" {
  bucket = "Devopssupp_bucket"
  acl    = "private"

  tags = {
    Name        = "Devopssupp_bucket"
    Environment = "Dev"
  }
}