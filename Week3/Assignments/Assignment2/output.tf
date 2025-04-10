output "vpc_id" {
  value = aws_vpc.my_vpc.id
}

output "subnet_" {
  value = aws_subnet.public_subnet.id
}