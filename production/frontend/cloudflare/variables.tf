variable "account_id" {
  type        = string
  nullable    = false
  description = "Specify Cloudflare Account ID"
}

variable "api_token" {
  type        = string
  nullable    = false
  description = "Specify Cloudflare API Token"
}

variable "zone_id" {
  type        = string
  nullable    = false
  description = "Specify Cloudflare Zone ID"
}

# Passed via CLI
variable "cloudflare_account_id" {
  type        = string
  nullable    = false
  description = "Speicfy Cloudflare Account ID"
}

variable "cloudflare_access_key" {
  type        = string
  nullable    = false
  description = "Speicfy Cloudflare Access Key"
}

variable "cloudflare_secret_key" {
  type        = string
  nullable    = false
  description = "Speicfy Cloudflare Secret Key"
}
