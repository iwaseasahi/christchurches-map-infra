resource "aws_s3_bucket" "main" {
  bucket        = "christchurches-map-ecs"
  acl           = "private"
  force_destroy = false
}
