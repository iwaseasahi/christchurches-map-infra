resource "aws_network_acl" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    "Name" = "christchurches-map-ecs-acl"
  }
  tags_all = {
    "Name" = "christchurches-map-ecs-acl"
  }
}
