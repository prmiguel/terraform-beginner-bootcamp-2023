output "site_one_bucket_name" {
  value = module.terrahouse_aws_site_one.bucket_name
}

output "site_one_s3_static_endpoint" {
  value = module.terrahouse_aws_site_one.website_endpoint
}

output "site_one_domain_url" {
  description = "The CloudFront Distribution Domain Name"
  value = module.terrahouse_aws_site_one.domain_name
}

output "site_two_bucket_name" {
  value = module.terrahouse_aws_site_two.bucket_name
}

output "site_two_s3_static_endpoint" {
  value = module.terrahouse_aws_site_two.website_endpoint
}

output "site_two_domain_url" {
  description = "The CloudFront Distribution Domain Name"
  value = module.terrahouse_aws_site_two.domain_name
}

output "site_three_bucket_name" {
  value = module.terrahouse_aws_site_three.bucket_name
}

output "site_three_s3_static_endpoint" {
  value = module.terrahouse_aws_site_three.website_endpoint
}

output "site_three_domain_url" {
  description = "The CloudFront Distribution Domain Name"
  value = module.terrahouse_aws_site_three.domain_name
}
