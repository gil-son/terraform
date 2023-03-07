resource "aws_s3_bucket" "bucket-random-test-2023" {
  bucket = "my-tf-test-bucket-a2023a2023"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "bucket-random-test-2023-example" {
  bucket = aws_s3_bucket.bucket-random-test-2023.id
  acl    = "private"
}