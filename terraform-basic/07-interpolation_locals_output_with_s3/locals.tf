locals {

  ip_filepath = "ips.json"
  common_tags = {
    Name        = "My bucket"
    Environment = var.environment
    Managedby   = "Terraform"
    Owner       = "Gil"
  }

}