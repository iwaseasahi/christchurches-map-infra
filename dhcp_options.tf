resource "aws_vpc_dhcp_options" "dns_resolver" {
  domain_name_servers = ["AmazonProvidedDNS"]
  domain_name         = "ap-northeast-1.compute.internal"
}
