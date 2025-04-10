provider "aws" {
  region = "us-east-1"
}

module "s3_bucket" {
  source      = "./modules/s3_buckets"
  bucket_name = "my-bucket-34252"
  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}