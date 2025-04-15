module "s3_bucket_module" {
  source = "./modules/s3_bucket"
  aws_bucket_name = "my-bucket-8425"
}

module "lambda" {
  source = "./modules/lambda"
}

module "api_gateway" {
  source = "./modules/api_gateway"
  aws_lambda_function_arn = module.lambda.lambda_invoke_arn
  aws_lambda_function_name = module.lambda.lambda_function_name

}
