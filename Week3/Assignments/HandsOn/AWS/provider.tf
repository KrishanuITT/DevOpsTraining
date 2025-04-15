terraform {
  backend "s3" {
    bucket         = "my-bucket-8425"
    key            = "api-gateway-lambda/terraform.tfstate"
    region         = "us-east-1"
  }
}


provider "aws" {
  region = "us-east-1"
}