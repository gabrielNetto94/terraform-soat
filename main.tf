module "ec2_instance" {
    source = "./modules/ec2"

    instance_type = "t3.nano"
    instance_name = "fiap-ec2-instance"
    ami_id = data.aws_ami.ubuntu.id    
}

module "s3_bucket" {
    source = "./modules/s3"
    bucket_name = "fiap-terraform-state"       
}


# # Configure the AWS Provider
# provider "aws" {
#   region                      = "sa-east-1"
#   access_key                  = "test"
#   secret_key                  = "test"
#   skip_credentials_validation = true
#   skip_metadata_api_check     = true
#   skip_requesting_account_id  = true

#   endpoints {
#     s3  = "http://localhost:4566"
#     ec2 = "http://localhost:4566"
#     sts = "http://localhost:4566"
#   }
# }
