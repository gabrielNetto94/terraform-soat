variable "default_region" {
  default = "sa-east-1"
}

variable "project_name" {
  default = "fiap-soat-terraform"
}

variable "cidr_block" {
  description = "The CIDR block for the VPC and Subnet"
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "The availability zones for the subnets"
  default = [
    "sa-east-1a",
    "sa-east-1b",
    "sa-east-1c"
  ]
  type = list(string)
}