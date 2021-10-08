resource "aws_acm_certificate" "main" {
  domain_name       = "christchurches-map.site"
  validation_method = "DNS"

  lifecycle {
    create_before_destroy = true
  }
}
