output "vpc_id" {
  value = aws_vpc.vpc-fiap.id
}

output "vpc_cidr_block" {
  value = aws_vpc.vpc-fiap.cidr_block
}

output "subnet_id" {
  value = aws_subnet.public_subnet[*].id
}

output "subnet_cidr_block" {
  value = aws_subnet.public_subnet[*].cidr_block
}