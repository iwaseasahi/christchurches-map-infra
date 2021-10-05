resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"

  tags = {
    Name = "christchurches-map-ecs-vpc"
  }

  tags_all = {
    Name = "christchurches-map-ecs-vpc"
  }
}
