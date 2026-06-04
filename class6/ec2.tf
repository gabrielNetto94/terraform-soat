
resource "aws_instance" "fiap_ec2" {
  # Use the AMI ID from the data source datasource.tf
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  tags = var.tags_dev
}