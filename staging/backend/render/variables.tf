variable "api_key" {
  type        = string
  nullable    = false
  description = "Specify Render API Key"
}

variable "owner_id" {
  type        = string
  nullable    = false
  description = "Specify Render Owner ID"
}

variable "region" {
  type        = string
  nullable    = false
  description = "Specify Render Region"
}

variable "server_env" {
  type        = map(object({ value = string }))
  nullable    = false
  description = "Specify Render Server Envs"
}

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
