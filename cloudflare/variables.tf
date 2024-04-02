variable "cloudflare_zone_id" {
  type        = string
  description = "cloudflare_zone_id"

}

variable "cloudfront_dns" {
  type        = string
  description = "cname domain cloudfront dns"
}

variable "domain_name" {
  type        = string
  description = "cname domain cloudfront dns"
}


variable "cloudflare_api_token" {
  description = "API Key for Cloudflare account"
  default = "v4k5npicFOOfwN8fqhvvSLr3oxlZXeGkJeeaJAP6"
  type        = string
}
