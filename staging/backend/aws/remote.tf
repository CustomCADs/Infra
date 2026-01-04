data "terraform_remote_state" "staging_buckets" {
  backend = "s3"

  config = {
    bucket                      = "customcads-terraform-staging"
    key                         = "buckets/cloudflare/terraform.tfstate"
    region                      = "auto"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true
    use_path_style              = true
    endpoints                   = { s3 = "https://${var.cloudflare_account_id}.r2.cloudflarestorage.com" }
    access_key                  = var.cloudflare_access_key
    secret_key                  = var.cloudflare_secret_key
  }
}

data "terraform_remote_state" "global_backend" {
  backend = "s3"

  config = {
    bucket                      = "customcads-terraform-global"
    key                         = "backend/aws/terraform.tfstate"
    region                      = "auto"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true
    use_path_style              = true
    endpoints                   = { s3 = "https://${var.cloudflare_account_id}.r2.cloudflarestorage.com" }
    access_key                  = var.cloudflare_access_key
    secret_key                  = var.cloudflare_secret_key
  }
}

data "terraform_remote_state" "global_frontend" {
  backend = "s3"

  config = {
    bucket                      = "customcads-terraform-global"
    key                         = "frontend/aws/terraform.tfstate"
    region                      = "auto"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true
    use_path_style              = true
    endpoints                   = { s3 = "https://${var.cloudflare_account_id}.r2.cloudflarestorage.com" }
    access_key                  = var.cloudflare_access_key
    secret_key                  = var.cloudflare_secret_key
  }
}
