resource "cloudflare_worker" "customcads_worker" {
  account_id = var.account_id
  name       = "customcads-staging"
  logpush    = false
  observability = {
    enabled = false
  }
  subdomain = {
    enabled          = true
    previews_enabled = true
  }
}

resource "cloudflare_workers_custom_domain" "customcads_domain" {
  account_id  = var.account_id
  hostname    = "staging.customcads.com"
  service     = cloudflare_worker.customcads_worker.name
  zone_id     = data.terraform_remote_state.global_frontend.outputs.zone_id
  environment = "production" # wrangler/tanstack start still uses this legacy setting
}
