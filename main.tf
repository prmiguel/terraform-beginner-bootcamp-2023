resource "random_string" "random" {
  lower   = true
  upper   = false
  length  = 32
  special = false
}

resource "aws_s3_bucket" "my_test_bucket" {
  bucket = random_string.random.result
  tags = {
    "user_uuid" = var.user_uuid
  }
}
