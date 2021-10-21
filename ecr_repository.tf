resource "aws_ecr_repository" "rails" {
  name                 = "christchurches-map-rails"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
}

resource "aws_ecr_repository" "nginx" {
  name                 = "christchurches-map-nginx"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
}
