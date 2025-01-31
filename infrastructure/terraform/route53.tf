resource "aws_route53_zone" "pikpok_domain" {
  name = "pikpok.com"
}

resource "aws_route53_record" "pikpok_record" {
  zone_id = aws_route53_zone.pikpok_domain.zone_id
  name    = "www.pikpok.com"
  type    = "A"
  alias {
    name                   = aws_cloudfront_distribution.cdn.domain_name
    zone_id                = aws_cloudfront_distribution.cdn.hosted_zone_id
    evaluate_target_health = false
  }
}