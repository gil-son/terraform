resource "aws_s3_bucket" "this" {
  bucket = "${random_pet.bucket.id}-my-bucket-${var.environment}"
    
  tags = {
    Name        = "My bucket"
    Environment = var.environment
    Managedby = "Terraform"
    Owner = "Gil"
  }
}
