terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.28.0"
    }
  }
}

provider "cloudflare" {
  retries = 1
}

resource "cloudflare_record" "example" {
  zone_id = var.cloudflare_zone_id
  name    = var.domain_name
  value   = var.cloudfront_dns
  type    = "CNAME"
  ttl     = 3600
}
