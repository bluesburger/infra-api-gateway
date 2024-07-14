resource "aws_apigatewayv2_integration" "lambda_integration" {
  api_id                 = aws_apigatewayv2_api.api_gateway.id
  integration_type       = "AWS_PROXY"
  integration_uri        = data.aws_lambda_function.lambda_lgpd.invoke_arn
  integration_method     = "POST"
  payload_format_version = "2.0"
}

#ROUTES MENU
resource "aws_apigatewayv2_integration" "alb_integration_menu" {
  api_id                 = aws_apigatewayv2_api.api_gateway.id
  integration_type       = "HTTP_PROXY"
  integration_uri        = local.route_menu
  integration_method     = "GET"
  payload_format_version = "1.0"
}

resource "aws_apigatewayv2_route" "route_menu" {
  api_id    = aws_apigatewayv2_api.api_gateway.id
  route_key = "GET /menu"
  target    = "integrations/${aws_apigatewayv2_integration.alb_integration_menu.id}"
}

#ROUTES ORDER
resource "aws_apigatewayv2_integration" "alb_integration_order_get" {
  api_id                 = aws_apigatewayv2_api.api_gateway.id
  integration_type       = "HTTP_PROXY"
  integration_uri        = local.route_order
  integration_method     = "GET"
  payload_format_version = "1.0"
}

resource "aws_apigatewayv2_route" "route_order_get" {
  api_id    = aws_apigatewayv2_api.api_gateway.id
  route_key = "GET /order"
  target    = "integrations/${aws_apigatewayv2_integration.alb_integration_order_get.id}"
}

resource "aws_apigatewayv2_integration" "alb_integration_order_post" {
  api_id                 = aws_apigatewayv2_api.api_gateway.id
  integration_type       = "HTTP_PROXY"
  integration_uri        = local.route_order
  integration_method     = "POST"
  payload_format_version = "1.0"
}

resource "aws_apigatewayv2_route" "route_order_post" {
  api_id    = aws_apigatewayv2_api.api_gateway.id
  route_key = "POST /order"
  target    = "integrations/${aws_apigatewayv2_integration.alb_integration_order_post.id}"
}

#ROUTES PAYMENT
resource "aws_apigatewayv2_integration" "alb_integration_payment" {
  api_id                 = aws_apigatewayv2_api.api_gateway.id
  integration_type       = "HTTP_PROXY"
  integration_uri        = local.route_payment
  integration_method     = "POST"
  payload_format_version = "1.0"
}

resource "aws_apigatewayv2_route" "route_payment" {
  api_id    = aws_apigatewayv2_api.api_gateway.id
  route_key = "POST /payment"
  target    = "integrations/${aws_apigatewayv2_integration.alb_integration_payment.id}"
}