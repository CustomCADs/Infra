resource "cloudflare_zone" "customcads_zone" {
  account = {
    id = var.account_id
  }
  name = "customcads.com"
}

import {
  id = var.zone_id
  to = cloudflare_zone.customcads_zone
}
