


module "ec2_instance" {
    source = "./terraform-modules/ec2"

    instance_type = "t3.nano"
    instance_name = "fiap-ec2-instance"
    ami_id = data.aws_ami.ubuntu.id

}

module "s3_bucket" {
    source = "./terraform-modules/s3"

    bucket_name = "fiap-terraform-state"
    
}