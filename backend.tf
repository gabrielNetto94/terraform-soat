terraform {
  backend "s3" {
    bucket = "fiap-soat-techchallenge-backend"
    key    = "fiap/terraform.tfstate"
    region = "sa-east-1"
  }
}
