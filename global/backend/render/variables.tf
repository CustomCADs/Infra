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

variable "project_id" {
  type        = string
  nullable    = false
  description = "Specify Render Project ID"
}
