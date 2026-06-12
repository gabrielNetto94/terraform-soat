resource "aws_internet_gateway" "fiap-internet_gateway" {
  vpc_id = aws_vpc.vpc-fiap.id

  tags = {
    Name = "main"
  }
}

# resource "aws_internet_gateway_attachment" "fiap_igw_attachment" {
#   internet_gateway_id = aws_internet_gateway.fiap-internet_gateway.id
#   vpc_id              = aws_vpc.vpc-fiap.id
# }