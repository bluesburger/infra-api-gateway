data "aws_lambda_function" "lambda_lgpd" {
  function_name = var.lambda_name_lgpd
}

data "aws_lb" "alb_tasks_ecs" {
  name = var.alb_name
}