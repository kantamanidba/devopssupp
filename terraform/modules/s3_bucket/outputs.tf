output "source_arn" {
  value = module.s3_bucket.source_arn
}

output "source_id" {
  value = module.s3_bucket.source_id
}

output "destination_arn" {
  value = module.s3_bucket.destination_arn
}

output "destination_id" {
  value = module.s3_bucket.destination_id
}
output "bucket_name" {
  value = module.s3_bucket
}