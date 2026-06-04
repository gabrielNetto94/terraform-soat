terraform {
  backend "s3" {
    bucket = "fiap-soat-tf-1"
    key    = "fiap/2026/terraform.tfstate"
    region = "sa-east-1"
  }
}