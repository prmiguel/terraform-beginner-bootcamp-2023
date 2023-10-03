output "bucket_name" {
  value = module.terrahouse_aws.bucket_name
}

output "s3_static_endpoint" {
  value = module.terrahouse_aws.website_endpoint
}
