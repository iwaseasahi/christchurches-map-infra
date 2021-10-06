resource "aws_route_table" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "christchurches-map-ecs-rtb"
  }
  tags_all = {
    Name = "christchurches-map-ecs-rtb"
  }
}
