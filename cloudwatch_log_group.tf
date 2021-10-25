resource "aws_cloudwatch_log_group" "christchurches-map-cluster" {
  name              = "/aws/ecs/containerinsights/christchurches-map-cluster/performance"
  retention_in_days = 1
}

resource "aws_cloudwatch_log_group" "christchurches-map-task" {
  name = "/ecs/christchurches-map-task"
}

resource "aws_cloudwatch_log_group" "christchurches-map-db-migrate-task" {
  name = "/ecs/christchurches-map-db-migrate-task"
}
