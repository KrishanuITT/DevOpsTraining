resource "aws_s3_bucket" "mock_api_bucket" {
  bucket = var.aws_bucket_name
}

resource "aws_s3_bucket_public_access_block" "public_block" {
  bucket = aws_s3_bucket.mock_api_bucket.id

  block_public_acls   = false
  block_public_policy = false
  restrict_public_buckets = false
  ignore_public_acls = false
}

resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.mock_api_bucket.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Sid       = "PublicReadGetObject",
        Effect    = "Allow",
        Principal = "*",
        Action    = "s3:GetObject",
        Resource  = "${aws_s3_bucket.mock_api_bucket.arn}/*"
      }
    ]
  })
}
