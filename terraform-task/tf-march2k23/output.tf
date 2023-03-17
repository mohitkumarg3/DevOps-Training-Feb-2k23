output "bucket_arn" {
    value = aws_s3_bucket.box.*.arn
} 

output "bucket_region" {
    value = aws_s3_bucket.box.*.region
} 