resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "christchurches-map-igw"
  }
  tags_all = {
    "Name" = "christchurches-map-igw"
  }
}
