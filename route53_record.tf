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
  records = [
    "ns-1881.awsdns-43.co.uk. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400",
  ]
  ttl     = 900
}

resource "aws_route53_record" "cname_acm-validations" {
}

resource "aws_route53_record" "www" {
}
