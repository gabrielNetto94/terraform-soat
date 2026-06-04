
# Outputs for S3 bucket

# output arn of the bucket
output "bucket_arn" {
  value = aws_s3_bucket.bucket-backend.arn
}

# output id of the bucket
output "bucket_id" {
  value = aws_s3_bucket.bucket-backend.id
}