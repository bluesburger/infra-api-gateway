variable "aws_region" {
  type = string
  description = "Regiao da aws onde os recursos são provisionados"
  default = "us-east-1"
}

variable "apigtw_name" {
  type = string
  description = "Nome do api gateway"
  default = "apigtw-ordering-system-blues-burger"
}

variable "lambda_name_lgpd" {
  type = string
  description = "Nome da lambda de conformidade LGPD"
  default = "faas-delete-user-data"
}

variable "alb_name" {
  type = string
  description = "Nome do application load balancer das tarefas ecs"
  default = "ALB-bluesburguer"
}

##### API MENU #####
variable "api_menu_port" {
  type = string
  description = "porta onde o microserviço de menu é exposto"
  default = "8020"
}

variable "api_menu_endpoints" {
  type = string
  description = "Endpoints do microserviço de menu"
  default = "api/v1/menu"
}

##### API ORDER #####
variable "api_order_port" {
  type = string
  description = "porta onde o microserviço de order é exposto"
  default = "8022"
}

variable "api_order_endpoints" {
  type = string
  description = "Endpoints do microserviço de order"
  default = "api/order"
}

##### API PAYMENT #####
variable "api_payment_port" {
  type = string
  description = "porta onde o microserviço de payment é exposto"
  default = "8021"
}

variable "api_payment_endpoints" {
  type = string
  description = "Endpoints do microserviço de payment"
  default = "api/v1/payment"
}
