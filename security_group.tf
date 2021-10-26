resource "aws_security_group" "christchurches-map-ecs-redis" {
  name        = "christchurches-map-ecs-redis"
  description = "Amazon ElastiCache Redis for christchurches-map-ecs"
  vpc_id      = aws_vpc.main.id

  tags = {
    "Name" = "christchurches-map-ecs-redis"
  }
  tags_all = {
    "Name" = "christchurches-map-ecs-redis"
  }
}

resource "aws_security_group" "christchurches-map-ecs-alb" {
  name        = "christchurches-map-ecs-alb"
  description = "ALB for christchurches-map-ecs"
  vpc_id      = aws_vpc.main.id

  tags = {
    "Name" = "christchurches-map-ecs-alb"
  }
  tags_all = {
    "Name" = "christchurches-map-ecs-alb"
  }
}

resource "aws_security_group" "christchurches-map-ecs" {
  name        = "christchurches-map-ecs"
  description = "ECS for christchurches-map-ecs"
  vpc_id      = aws_vpc.main.id

  tags = {
    "Name" = "christchurches-map-ecs"
  }
  tags_all = {
    "Name" = "christchurches-map-ecs"
  }
}

resource "aws_security_group" "christchurches-map-ecs-rds" {
  name        = "christchurches-map-rds-staging"
  description = "Created by RDS management console"
  vpc_id      = aws_vpc.main.id

  tags = {
    "Name" = "christchurches-map-ecs-rds"
  }
  tags_all = {
    "Name" = "christchurches-map-ecs-rds"
  }
}
