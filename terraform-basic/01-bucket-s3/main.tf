provider "aws" {
  region = "us-east-1"
  profile = "adm_gil" # If profile is don't declared, the profiel default will be use 
}

resource "aws_s3_bucket" "my-test-bucket-01070107" {
  bucket = "my-tf-test-bucket-gilszon"
    
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby = "Terraform"
  }
}