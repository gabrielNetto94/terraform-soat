resource "aws_s3_bucket" "bucket-backend" {
  bucket = var.bucket_name
  tags   = var.tags_dev
}

# resource "aws_s3_bucket" "bucket-prod" {
#   bucket = "${var.bucket_name}-1"
#   tags = var.tags_dev
# }
