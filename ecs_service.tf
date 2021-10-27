# NOTE: 無料枠を超えて料金が掛かるため、削除する
# resource "aws_ecs_service" "main" {
#   name            = "cc-map-service-bg-deploy"
#   cluster         = aws_ecs_cluster.main.id
#   task_definition = "christchurches-map-task:63"
#   desired_count   = 1
#   iam_role        = "aws-service-role"

#   load_balancer {
#     target_group_arn = aws_lb_target_group.main.arn
#     container_name   = "christchurches-map-nginx"
#     container_port   = 80
#   }

#   enable_ecs_managed_tags           = true
#   health_check_grace_period_seconds = 0
#   launch_type                       = "FARGATE"
#   platform_version                  = "1.4.0"
#   tags                              = {}
#   tags_all                          = {}
#   wait_for_steady_state             = false

#   deployment_controller {
#     type = "CODE_DEPLOY"
#   }

#   network_configuration {
#     assign_public_ip = true
#     security_groups = [
#       aws_security_group.christchurches-map-ecs.id,
#     ]
#     subnets = [
#       aws_subnet.public_subnet1.id,
#       aws_subnet.public_subnet2.id,
#     ]
#   }

#   timeouts {}
# }
