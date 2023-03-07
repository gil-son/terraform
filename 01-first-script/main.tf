provider "aws" {
  region = "us-east-1"
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
}

resource "aws_s3_bucket" "my-test-bucket-01070107" {
  bucket = "my-tf-test-bucket-gilszon"
  acl    = "private"
  
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby = "Terraform"
  }
}