module "s3_bucket" {
  source = "git@github.com:softrams-iac/terraform-aws-s3-legacy.git//?ref=v1.0.17"
  bucket_name = "knrmytestbu"
  region = "us-east-1"
  iam_arn = ""
  versioning     = false
  replication    = false
  acl            = "private"
  sse_algorithm  = "AES256"
  tags = {
    Name        = "Devopssupp_s3_bucket"
    Environment = "Dev"
   }
}