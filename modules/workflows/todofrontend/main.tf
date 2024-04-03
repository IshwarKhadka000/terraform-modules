module "frontend" {
  source      = "../../services/s3"
  bucket_name = "${var.environment}.todo.frontend.com"
  common_tags = var.common_tags
}

module "cloudfront" {
  source       = "../../services/cloudfront"
  domain       = module.frontend.bucket_regional_domain_name
  s3_origin_id = module.frontend.bucket_arn
  depends_on   = [module.frontend]
  common_tags = var.common_tags
}

module "cdn-oac-frontend" {
  source         = "../../services/cdn-oac"
  bucket_id      = module.frontend.bucket_id
  bucket_arn     = module.frontend.bucket_arn
  cloudfront_arn = module.cloudfront.cloudfront_arn
}

data "aws_caller_identity" "current" {}

module "cloudflare" {
  source         = "../../services/cloudflare"
  domain_name    = var.domain_name
  cloudfront_dns = module.cloudfront.cloudfront_dns
}





