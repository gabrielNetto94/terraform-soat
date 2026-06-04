variable "instance_type" {
  description = "The type of the EC2 instance"
  type        = string
}

variable "ami_id" {
  description = "The ID of the AMI to use for the EC2 instance"
  type        = string
}

variable "instance_name" {
  description = "The name tag for the EC2 instance"
  type        = string
}

variable "region" {
  description = "The AWS region where the EC2 instance will be created"
  type        = string
  default     = "sa-east-1"
}

