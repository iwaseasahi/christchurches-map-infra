resource "aws_ecs_cluster" "main" {
  name = "christchurches-map-cluster"

  capacity_providers = [
    "FARGATE",
    "FARGATE_SPOT",
  ]
}
