variable "aws_region" {
  description = "AWS region"
  default     = "ap-southeast-1"
}

variable "bucket_name" {
  description = "S3 bucket name for the static website"
  default     = "syamel-static-site-mp5" # ⚠️ Must be globally unique!
}

variable "alert_email" {
  description = "Email to receive SNS alerts"
  default     = "syamelamri13@gmail.com" # Replace with your email
}

