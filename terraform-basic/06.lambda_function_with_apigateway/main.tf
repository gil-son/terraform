provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "us-east-1"
}

resource "aws_api_gateway_rest_api" "my_api_gateway" {
  name = "my-api-gateway-name"
}

resource "aws_api_gateway_resource" "my_resource_api_gateway_resource" {
  rest_api_id = aws_api_gateway_rest_api.my_api_gateway.id
  parent_id   = aws_api_gateway_rest_api.my_api_gateway.root_resource_id
  path_part   = "mypath"
}

resource "aws_api_gateway_method" "my_api_gateway_method" {
  rest_api_id   = aws_api_gateway_rest_api.my_api_gateway.id
  resource_id   = aws_api_gateway_resource.my_resource_api_gateway_resource.id
  http_method   = "GET"
  authorization = "NONE"
}

resource "aws_lambda_function" "my_lambda_function" {
  function_name = "the_lambda_function"
  handler       = "lambda_function.lambda_handler"
  runtime       = "python3.9"
  filename      = "lambda_function.zip"
  role          = "arn:aws:iam::876801740533:role/role_full_access_lambda"

  provisioner "local-exec" {
    command = "cd lambda && zip -r ../lambda_function.zip ."
  }
}

resource "aws_api_gateway_integration" "my_api_gateway_integration" {
  rest_api_id             = aws_api_gateway_rest_api.my_api_gateway.id
  resource_id             = aws_api_gateway_resource.my_resource_api_gateway_resource.id
  http_method             = aws_api_gateway_method.my_api_gateway_method.http_method
  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = aws_lambda_function.my_lambda_function.invoke_arn
}

resource "aws_api_gateway_deployment" "my_api_gateway_deployment" {
  rest_api_id        = aws_api_gateway_rest_api.my_api_gateway.id
  stage_description = "Production"
  variables = {
    lambdaAlias = aws_lambda_alias.my_lambda_alias.name
  }
}


resource "aws_lambda_alias" "my_lambda_alias" {
  name             = "prod"
  function_name    = aws_lambda_function.my_lambda_function.function_name
  function_version = "$LATEST"
}

resource "aws_api_gateway_stage" "prod" {
  rest_api_id   = aws_api_gateway_rest_api.my_api_gateway.id
  stage_name    = "prod"
  deployment_id = aws_api_gateway_deployment.my_api_gateway_deployment.id
}