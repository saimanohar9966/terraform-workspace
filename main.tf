resource "aws_s3_bucket" "my_bucket" {
  bucket = "${terraform.workspace}-${var.bucket_name}"
  tags = {
    Environment = "terraform.workspace"
  }
}

resource "aws_s3_bucket_acl" "my_bucket_acl" {
  bucket = aws_s3_bucket.my_bucket.id

  acl = "private"
}

resource "aws_s3_bucket_public_access_block" "my_bucket_access_block" {
  bucket = aws_s3_bucket.my_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
