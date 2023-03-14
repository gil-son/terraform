# Configura as credenciais para acessar a API da AWS

provider "aws" {
  access_key = "AKIA4YJLUZ32TH457XR6"
  secret_key = "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"
  region     = "us-east-1"
}

# Cria o recurso do Lambda em Python

resource "aws_lambda_function" "my_lambda" {
  filename         = "lambda_function.zip"
  function_name    = "my_lambda_function_test_locale_01"
  role             = "arn:aws:iam::876801740533:role/my_role_to_create_lambda"
  handler          = "lambda_function.lambda_handler"
  runtime          = "python3.8"
  memory_size      = 128
  timeout          = 5
  source_code_hash = filebase64sha256("lambda_function.zip")

  # Configura as permissões do Lambda para acessar outros recursos da AWS, se necessário
  # Exemplo: acessar um bucket S3
  # resource "aws_lambda_permission" "s3_permission" {
  #   statement_id  = "AllowExecutionFromS3"
  #   action        = "lambda:InvokeFunction"
  #   function_name = aws_lambda_function.my_lambda.function_name
  #   principal     = "s3.amazonaws.com"
  #   source_arn    = "arn:aws:s3:::my-bucket/*"
  # }
}

# Cria um arquivo ZIP com o código do Lambda
data "archive_file" "lambda_zip" {
  type        = "zip"
  source_dir  = "lambda_function"
  output_path = "lambda_function.zip"
}
