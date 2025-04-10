provider "aws" {
  region = "us-east-1"
}

variable "ami" {
  description = "THis is AMI for instance"
}
variable "instance_type" {
  description = "This is instance type"
}

resource "aws_instance" "name" {
  ami           = var.ami
  instance_type = var.instance_type
}
