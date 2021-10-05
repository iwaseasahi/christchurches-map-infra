resource "aws_subnet" "public_subnet1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.0.0/24"

  tags = {
    "Name" = "christchurches-map-cluster/Public"
  }
  tags_all = {
    "Name" = "christchurches-map-cluster/Public"
  }
}

resource "aws_subnet" "public_subnet2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    "Name" = "christchurches-map-cluster/Public"
  }
  tags_all = {
    "Name" = "christchurches-map-cluster/Public"
  }
}
