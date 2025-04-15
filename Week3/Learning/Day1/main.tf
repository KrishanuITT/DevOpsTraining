provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "MyFirstServer" {
  ami             = "ami-00a929b66ed6e0de6"
  subnet_id       = "subnet-0658e9b666fc3c0f8"
  instance_type   = "t2.micro"
  key_name        = "ec2-tutorial"
  security_groups = ["sg-0801099fdb68535a4"]
}
