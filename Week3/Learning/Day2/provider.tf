# Provider are plugins which enable us to interact with cloud providers

# Required provider are used to define the provider that terraform should use it is use to define the source and verion of the provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
  alias  = "abc"
}
provider "aws" {
  region = "us-east-1"
  alias  = "us-east-1"
}

