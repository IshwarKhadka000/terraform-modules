variable "cloudflare_zone_id" {
  type        = string
  default     = "7c782c2e447c99819554f15afde24e5e"
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
