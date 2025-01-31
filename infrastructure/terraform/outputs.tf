output "ecs_cluster_name" {
  value = aws_ecs_cluster.pikpok_cluster.name
}

output "rds_endpoint" {
  value = aws_db_instance.rds_postgres.endpoint
}

output "s3_bucket" {
  value = aws_s3_bucket.pikpok_bucket.bucket
}

output "cloudfront_distribution" {
  value = aws_cloudfront_distribution.cdn.domain_name
}