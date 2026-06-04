
resource "aws_instance" "fiap_ec2" {
  # Use the AMI ID from the data source datasource.tf
  ami = data.aws_ami.ubuntu.id
  # count         = 2
  # tags = var.tags_dev

  for_each = var.instance_types
  
  instance_type = each.key
  tags = {
    Name = each.value // Use the instance type as the name tag for each instance
  }
}

# another way to declare multiple instances

variable "instance_types" {
  description = "List of EC2 instance types to create"
  type        = map(string)
  default = {
    "t3.micro" = "t3.micro"
    "t3.small" = "t3.small"
  }
}