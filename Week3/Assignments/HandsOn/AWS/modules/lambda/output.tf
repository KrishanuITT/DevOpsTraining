output "lambda_function_name" {
  value = aws_lambda_function.mock_lambda.function_name
}

output "lambda_invoke_arn" {
  value = aws_lambda_function.mock_lambda.invoke_arn
}