variable "bucket_id" {
  type        = string
  description = "The ID of the bucket to be used for the CDN"
}

variable "bucket_arn" {
  type        = string
  description = "The ARN of the bucket to be used for the CDN"
}

variable "cloudfront_arn" {
  type        = string
  description = "The ARN of the CloudFront distribution to be used for the CDN"
}



