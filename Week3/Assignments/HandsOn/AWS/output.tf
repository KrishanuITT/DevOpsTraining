output "s3_bucket_backend" {
  value = module.s3_bucket_module.s3_bucket_name
  sensitive = true
}

output "api_endpoint" {
  value = module.api_gateway.api_endpoint
}