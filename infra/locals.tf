locals {
  route_menu = "http://${data.aws_lb.alb_tasks_ecs.dns_name}:${var.api_menu_port}/${var.api_menu_endpoints}"
  route_order = "http://${data.aws_lb.alb_tasks_ecs.dns_name}:${var.api_order_port}/${var.api_order_endpoints}"
  route_payment = "http://${data.aws_lb.alb_tasks_ecs.dns_name}:${var.api_payment_port}/${var.api_payment_endpoints}"
}