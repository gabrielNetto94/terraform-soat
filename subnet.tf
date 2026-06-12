resource "aws_subnet" "public_subnet" {
  count  = 2
  vpc_id = aws_vpc.vpc-fiap.id
  # cidr_block = var.cidr_block

  # define a subnet for each 
  cidr_block = cidrsubnet(aws_vpc.vpc-fiap.cidr_block, 4, count.index)

  map_public_ip_on_launch = true

  // define a subnet for each availability zone
  availability_zone = var.availability_zones[count.index]

}