resource "aws_s3_bucket" "pikpok_bucket" {
  bucket = "pikpok-storage"
}

resource "aws_s3_bucket_acl" "pikpok_bucket_acl" {
  bucket = aws_s3_bucket.pikpok_bucket.id
  acl    = "private"
}

resource "aws_cloudfront_distribution" "cdn" {
  origin {
    domain_name = aws_s3_bucket.pikpok_bucket.bucket_regional_domain_name
    origin_id   = "S3-PikPok"
  }
  enabled             = true
  default_root_object = "index.html"
  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }
  viewer_certificate {
    cloudfront_default_certificate = true
  }
  default_cache_behavior {
    target_origin_id       = "S3-PikPok"
    viewer_protocol_policy = "allow-all"
    allowed_methods        = ["GET", "HEAD"]
    cached_methods         = ["GET", "HEAD"]
    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }
  }
}