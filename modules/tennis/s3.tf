resource "aws_s3_bucket" "bucket1" {
  bucket        = "pp-bucket1-${local.region}-${local.account_id}"
  force_destroy = true
}

resource "aws_s3_bucket_acl" "bucket1" {
  bucket = aws_s3_bucket.bucket1.id
  acl    = "private"
}

resource "aws_s3_bucket_public_access_block" "bucket1" {
  bucket                  = aws_s3_bucket.bucket1.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket" "bucket2" {
  bucket        = "pp-bucket2-${local.region}-${local.account_id}"
  force_destroy = true
}

resource "aws_s3_bucket_acl" "bucket2" {
  bucket = aws_s3_bucket.bucket2.id
  acl    = "private"
}

resource "aws_s3_bucket_public_access_block" "bucket2" {
  bucket                  = aws_s3_bucket.bucket2.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
