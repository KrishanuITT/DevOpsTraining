resource "aws_s3_bucket" "my_bucket_2425" {
  bucket   = "my-bucket-2425"
  provider = aws.abc
}

resource "aws_s3_bucket" "my_bucket_22425" {
  bucket   = "my-bucket-22425"
  provider = aws.us-east-1
}