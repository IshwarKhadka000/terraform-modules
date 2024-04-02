output "oac_id" {
  value = aws_cloudfront_origin_access_control.cloudfront_s3_oac.id
}

output "oac_etag" {
  value = aws_cloudfront_origin_access_control.cloudfront_s3_oac.etag
}

output "cloudfront_id" {
  value = aws_cloudfront_distribution.s3_distribution.id
}

output "cloudfront_arn" {
  value = aws_cloudfront_distribution.s3_distribution.arn
}

output "cloudfront_dns" {
  value = aws_cloudfront_distribution.s3_distribution.domain_name
}
