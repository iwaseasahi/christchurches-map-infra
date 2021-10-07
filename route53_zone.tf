resource "aws_route53_zone" "main" {
  name    = "christchurches-map.site"
  comment = "キリスト教会マップの ECS で使用するドメイン。"
}
