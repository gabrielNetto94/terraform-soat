variable "bucket_name" {
  description = "The name of the S3 bucket to create."
  type        = string
  default     = "fiap-soat-tf-1"
}

variable "tags_dev" {
  type = map(string)
  default = {
    Name        = "HelloWorld"
    Environment = "Development"
    Owner       = "Dev Team"
    Fiap        = "SOAT"
  }
}

variable "instance_type" {
  description = "The type of EC2 instance to create."
  type        = string
  default     = "t3.micro"
}