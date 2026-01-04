resource "cloudflare_r2_bucket" "customcads_global_terraform_bucket" {
  account_id    = var.cloudflare_account_id
  name          = "customcads-terraform-global"
  location      = "EEUR"
  storage_class = "Standard"
}

resource "cloudflare_r2_bucket" "customcads_production_terraform_bucket" {
  account_id    = var.cloudflare_account_id
  name          = "customcads-terraform-production"
  location      = "EEUR"
  storage_class = "Standard"
}

resource "cloudflare_r2_bucket" "customcads_staging_terraform_bucket" {
  account_id    = var.cloudflare_account_id
  name          = "customcads-terraform-staging"
  location      = "EEUR"
  storage_class = "Standard"
}
