# NOTE: 無料枠を超えて料金が掛かるため、削除する
# resource "aws_elasticache_replication_group" "main" {
#   replication_group_id          = "christchurches-map-ecs-redis"
#   replication_group_description = "Amazon ElastiCache Redis for christchurches-map-ecs"
#   automatic_failover_enabled    = true
#   snapshot_retention_limit      = 1
#   snapshot_window               = "19:00-20:00"
#   at_rest_encryption_enabled    = false
#   auto_minor_version_upgrade    = true
#   engine                        = "redis"
#   engine_version                = "6.x"
#   maintenance_window            = "mon:13:00-mon:14:00"
#   multi_az_enabled              = false
#   node_type                     = "cache.t2.micro"
#   parameter_group_name          = "default.redis6.x"
#   port                          = 6379
#   security_group_ids = [
#     "sg-031ed8836c6d18abb"
#   ]
#   subnet_group_name          = "christchurches-map-ecs-subnet-group"
#   transit_encryption_enabled = false
# }
