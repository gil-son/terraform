variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = ""
  default     = "adm_gil" # If profile is don't declared, the profiel default will be use 
}


variable "environment" {
  type = string
  description = "Specify the HOST from Database."
  default = "dev"
}