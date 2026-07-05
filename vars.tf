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

variable "instance_type" {
  description = "The EC2 instance type for the EKS node group"
  default     = ["t3.micro"]
  type        = list(string)
}

# ── RDS ───────────────────────────────────────────────────────────────────────
variable "rds_db_name" {
  description = "Nome do banco de dados inicial no RDS"
  default     = "techchallengedb"
}

variable "rds_username" {
  description = "Usuário master do RDS PostgreSQL"
  default     = "postgres"
}

variable "rds_password" {
  description = "Senha master do RDS PostgreSQL — defina via TF_VAR_rds_password ou terraform.tfvars"
  type        = string
  sensitive   = true
}