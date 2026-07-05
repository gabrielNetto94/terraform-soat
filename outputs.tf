output "vpc_id" {
  description = "ID da VPC criada"
  value       = aws_vpc.vpc-fiap.id
}

output "vpc_cidr_block" {
  description = "CIDR block da VPC"
  value       = aws_vpc.vpc-fiap.cidr_block
}

output "subnet_id" {
  description = "IDs das subnets públicas"
  value       = aws_subnet.public_subnet[*].id
}

output "subnet_cidr_block" {
  description = "CIDR blocks das subnets públicas"
  value       = aws_subnet.public_subnet[*].cidr_block
}

# ── EKS ───────────────────────────────────────────────────────────────────────
output "eks_cluster_name" {
  description = "Nome do cluster EKS — usado pelo kubectl e CI/CD"
  value       = aws_eks_cluster.fiap-eks-cluster.name
}

output "eks_cluster_endpoint" {
  description = "Endpoint do API server do EKS"
  value       = aws_eks_cluster.fiap-eks-cluster.endpoint
}

output "eks_cluster_ca_certificate" {
  description = "Certificado CA do cluster (base64)"
  value       = aws_eks_cluster.fiap-eks-cluster.certificate_authority[0].data
  sensitive   = true
}

# ── RDS ───────────────────────────────────────────────────────────────────────
output "rds_endpoint" {
  description = "Endpoint do RDS PostgreSQL (host:port)"
  value       = aws_db_instance.postgres.endpoint
}

output "rds_host" {
  description = "Hostname do RDS PostgreSQL (sem porta)"
  value       = aws_db_instance.postgres.address
}

output "rds_port" {
  description = "Porta do RDS PostgreSQL"
  value       = aws_db_instance.postgres.port
}

output "rds_db_name" {
  description = "Nome do banco de dados criado no RDS"
  value       = aws_db_instance.postgres.db_name
}

output "rds_connection_string" {
  description = "Connection string completa para uso no .NET (Entity Framework / Npgsql)"
  value       = "Host=${aws_db_instance.postgres.address};Port=${aws_db_instance.postgres.port};Database=${aws_db_instance.postgres.db_name};Username=${var.rds_username};Password=${var.rds_password}"
  sensitive   = true
}