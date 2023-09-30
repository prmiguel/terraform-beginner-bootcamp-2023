terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "5.19.0"
    }
  }
}

provider "random" {
  # Configuration options
}

resource "random_string" "random" {
  lower   = true
  upper   = false
  length  = 32
  special = false
}

resource "aws_s3_bucket" "my_test_bucket" {
  bucket = random_string.random.result
}

output "random_string_id" {
  value = random_string.random.id
}

output "bucket_arn" {
  value = aws_s3_bucket.my_test_bucket.arn
}
