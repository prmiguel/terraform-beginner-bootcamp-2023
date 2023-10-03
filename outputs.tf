output "random_string_id" {
  value = random_string.random.id
}

output "bucket_arn" {
  value = aws_s3_bucket.my_test_bucket.arn
}
