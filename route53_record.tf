variable "aws_route53_record_cname_acm-validations_name" {}
variable "aws_route53_record_cname_acm-validations_record" {}
variable "aws_route53_record_www_alias_name" {}
variable "aws_route53_record_www_alias_zone_id" {}

resource "aws_route53_record" "ns" {
  zone_id = aws_route53_zone.main.zone_id
  type    = "NS"
  name    = "christchurches-map.site"
  ttl     = 172800
  records = [
    "ns-1057.awsdns-04.org.",
    "ns-1881.awsdns-43.co.uk.",
    "ns-450.awsdns-56.com.",
    "ns-927.awsdns-51.net.",
  ]
}

resource "aws_route53_record" "soa" {
  zone_id = aws_route53_zone.main.zone_id
  type    = "SOA"
  name    = "christchurches-map.site"
  ttl     = 900
  records = [
    "ns-1881.awsdns-43.co.uk. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400",
  ]
}

resource "aws_route53_record" "cname_acm-validations" {
  zone_id = aws_route53_zone.main.zone_id
  type    = "CNAME"
  name    = var.aws_route53_record_cname_acm-validations_name
  ttl     = 300
  records = [
    var.aws_route53_record_cname_acm-validations_record,
  ]
}

resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.main.zone_id
  type    = "A"
  name    = "www.christchurches-map.site"
  alias {
    evaluate_target_health = true
    name                   = var.aws_route53_record_www_alias_name
    zone_id                = var.aws_route53_record_www_alias_zone_id
  }
}
