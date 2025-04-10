data "archive_file" "lambda_zip" {
  type        = "zip"
  source_file = "${path.module}/lambda/index.py"
  output_path = "${path.module}/lambda.zip"
}

resource "aws_lambda_function" "mock_lambda" {
  function_name = "MockLambda"
  role          = "arn:aws:iam::445567072967:role/lambda_exec_role"
  handler       = "index.handler"
  runtime       = "python3.9"

  filename         = data.archive_file.lambda_zip.output_path
  source_code_hash = filebase64sha256(data.archive_file.lambda_zip.output_path)
}