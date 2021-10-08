resource "aws_lb" "main" {
  name                       = "christchurches-map-ecs-alb"
  load_balancer_type         = "application"
  drop_invalid_header_fields = true
}
