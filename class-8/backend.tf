terraform {
  backend "s3" {
    bucket = "fiap-soat-tf-1"
    key    = "fiap/aula8/terraform.tfstate"
    region = "sa-east-1"
  }
}