resource "aws_lb_target_group" "main" {
  name        = "christchurches-map-service-tg"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.main.id
  target_type = "ip"
}

resource "aws_lb_target_group" "bg_deploy" {
  name        = "cc-map-service-bg-deploy"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.main.id
  target_type = "ip"
}
