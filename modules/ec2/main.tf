resource "aws_instance" "this"{
    instance_type = var.instance_type
    ami           = var.ami_id

    tags = {
        Name = var.instance_name
    }
}