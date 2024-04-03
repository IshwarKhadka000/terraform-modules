variable "environment" {
  type        = string
  default     = "dev"
  description = "Name of the environment"
}
variable "domain_name" {
  type        = string
  description = "domain name for cloudflare"
}

variable "common_tags"{
  type = map(string)
  default = {
    Creator = "ishwarkhadka000@gmail.com"
    Deletable = "Yes"
    Project  = "Intern"
  }
}
