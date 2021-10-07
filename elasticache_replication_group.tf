resource "aws_elasticache_replication_group" "main" {
  replication_group_id          = "christchurches-map-ecs-redis"
  replication_group_description = "Amazon ElastiCache Redis for christchurches-map-ecs"
  automatic_failover_enabled    = true
  snapshot_retention_limit      = 1
}
