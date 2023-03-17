resource "aws_s3_bucket" "box" {
  count         = local.env == "dev" ? length(lookup(var.bucket_name, local.env)) : length(lookup(var.bucket_name, local.env))

  bucket        = element(lookup(var.bucket_name, local.env),count.index)
 
  acl           = "private"
  force_destroy = true

  tags = {
    Name = local.env
  }
}
