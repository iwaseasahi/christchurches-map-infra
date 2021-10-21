variable "aws_secretsmanager_name" {}

resource "aws_ecs_task_definition" "main" {
  family                = "christchurches-map-task"
  container_definitions = templatefile("task-definitions/christchurches-map-task.json", { account_id = data.aws_caller_identity.current.account_id, secretsmanager_name : var.aws_secretsmanager_name })
  cpu                   = "2048"
  execution_role_arn    = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/ecsTaskExecutionRole"
  memory                = "4096"
  requires_compatibilities = [
    "FARGATE",
  ]
  task_role_arn = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/ecsTaskExecutionRole"
}
