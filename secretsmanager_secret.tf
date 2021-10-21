resource "aws_secretsmanager_secret" "main" {
  name                           = "ccmap/ecs/staging/env"
  description                    = "christchurches-map-ecs の環境変数"
}
