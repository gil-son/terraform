provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my-test-bucket-01070107" {
  bucket = "my-tf-test-bucket-gilszon-01"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Owner       = "Gilson Vieira de Souza"
    UpdateAt    = "2023-03-07"

  }
}