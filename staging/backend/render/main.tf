terraform {
  backend "s3" {
    bucket                      = "customcads-terraform-staging"
    key                         = "backend/render/terraform.tfstate"
    region                      = "auto"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true
    use_path_style              = true
  }
  required_providers {
    render = {
      source  = "render-oss/render"
      version = "~> 1.8"
    }
  }
}

provider "render" {
  api_key  = var.api_key
  owner_id = var.owner_id
}
