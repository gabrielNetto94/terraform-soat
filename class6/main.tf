data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }

  filter {
    name   = "default-for-az"
    values = ["true"]
  }
}

locals {
  default_subnet_id = element(sort(data.aws_subnets.default.ids), 0)
}

module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "6.4.0"

  instance_type = "t3.micro"
  name          = "fiap-ec2-instance"
  subnet_id     = local.default_subnet_id
}

output "arn" {
  value = module.ec2-instance.arn
}