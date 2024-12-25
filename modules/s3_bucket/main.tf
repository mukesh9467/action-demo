resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
  acl    = var.bucket_access

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }

  tags = {
    Description = var.bucket_desc
    Environment = var.bucket_env
  }
}

