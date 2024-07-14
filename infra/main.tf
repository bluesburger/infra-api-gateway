resource "aws_apigatewayv2_api" "api_gateway" {
  name          = var.apigtw_name
  description   = "Api gateway do sistema de pedidos"
  protocol_type = "HTTP"
}

resource "aws_apigatewayv2_stage" "stage" {
  api_id      = aws_apigatewayv2_api.api_gateway.id
  name        = "dev"
  auto_deploy = true
}

#resource "aws_apigatewayv2_authorizer" "cognito_authorizer" {
#  api_id          = aws_apigatewayv2_api.api_gateway.id
#  name            = "cognito-authorizer"
#  authorizer_type = "JWT"
#  identity_sources = ["$request.header.Authorization"]
#
#  jwt_configuration {
##    issuer   = "https://${aws_cognito_user_pool.my_user_pool.endpoint}"
##    audience = [aws_cognito_user_pool_client.my_user_pool_client.id]
#  }
#}


