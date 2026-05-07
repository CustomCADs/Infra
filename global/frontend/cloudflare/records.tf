resource "cloudflare_dns_record" "customcads_record_6bf498151075f4a881839fc8fc23e733" {
  zone_id = cloudflare_zone.customcads_zone.id
  name    = "customcads.com"
  ttl     = 1
  type    = "A"
  proxied = true
}

resource "cloudflare_dns_record" "customcads_record_611ab52abe8377c2a104de210f9d5240" {
  zone_id = cloudflare_zone.customcads_zone.id
  name    = "customcads.com"
  ttl     = 1
  type    = "A"
  proxied = true
}

resource "cloudflare_dns_record" "customcads_record_4e20b77f77aabc33f728c16d409f4116" {
  zone_id = cloudflare_zone.customcads_zone.id
  name    = "customcads.com"
  ttl     = 1
  type    = "A"
  proxied = true
}

resource "cloudflare_dns_record" "customcads_record_d71c920cd5da0a95813ae5a5917b7c1a" {
  zone_id = cloudflare_zone.customcads_zone.id
  name    = "customcads.com"
  ttl     = 1
  type    = "A"
  proxied = true
}

resource "cloudflare_dns_record" "customcads_record_6a24bcc56cfe04f4ce02ba039b929be4" {
  zone_id = cloudflare_zone.customcads_zone.id
  name    = "customcads.com"
  ttl     = 1
  type    = "AAAA"
  proxied = true
}

resource "cloudflare_dns_record" "customcads_record_e5fcb00b889747726f20c10390e4a3f1" {
  zone_id = cloudflare_zone.customcads_zone.id
  name    = "customcads.com"
  ttl     = 1
  type    = "AAAA"
  proxied = true
}

resource "cloudflare_dns_record" "customcads_record_fe9a6d577856fd2f1273ec9a387a2566" {
  zone_id = cloudflare_zone.customcads_zone.id
  name    = "customcads.com"
  ttl     = 1
  type    = "AAAA"
  proxied = true
}

resource "cloudflare_dns_record" "customcads_record_f563d9803bb743adf903daa806903722" {
  zone_id = cloudflare_zone.customcads_zone.id
  name    = "customcads.com"
  ttl     = 1
  type    = "AAAA"
  proxied = true
}

resource "cloudflare_dns_record" "customcads_record_32bfb9a5efcd57f57aa389a13202290b" {
  zone_id = cloudflare_zone.customcads_zone.id
  name    = "customcads.com"
  ttl     = 1
  type    = "AAAA"
  proxied = true
}

resource "cloudflare_dns_record" "customcads_record_1a8132af4aef619048e06709a9b3ebeb" {
  zone_id = cloudflare_zone.customcads_zone.id
  name    = "customcads.com"
  ttl     = 1
  type    = "AAAA"
  proxied = true
}

resource "cloudflare_dns_record" "customcads_record_50a4626f7aaf8e5d5a7e9339d38fe47f" {
  zone_id = cloudflare_zone.customcads_zone.id
  name    = "customcads.com"
  ttl     = 1
  type    = "AAAA"
  proxied = true
}

resource "cloudflare_dns_record" "customcads_record_4497332952dae58d5334a42ce9aad0f7" {
  zone_id = cloudflare_zone.customcads_zone.id
  name    = "customcads.com"
  ttl     = 1
  type    = "AAAA"
  proxied = true
}

resource "cloudflare_dns_record" "customcads_record_da181bbc57eb82b1911fa502e29c80fd" {
  zone_id = cloudflare_zone.customcads_zone.id
  name    = "api.customcads.com"
  ttl     = 1
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_dns_record" "customcads_record_0afedaba990befba815da0ccd38ab010" {
  zone_id = cloudflare_zone.customcads_zone.id
  name    = "new.api.customcads.com"
  ttl     = 1
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_dns_record" "customcads_record_eb3e4043b84758de53f2042e90bddaa2" {
  zone_id = cloudflare_zone.customcads_zone.id
  name    = "staging.api.customcads.com"
  ttl     = 1
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_dns_record" "customcads_record_f18a421e44286a7253c839276ddfd422" {
  zone_id  = cloudflare_zone.customcads_zone.id
  name     = "customcads.com"
  ttl      = 1
  type     = "MX"
  proxied  = false
  priority = 10
}

resource "cloudflare_dns_record" "customcads_record_3ecc839a2545ce40af74f11b8a47a9ef" {
  zone_id  = cloudflare_zone.customcads_zone.id
  name     = "customcads.com"
  ttl      = 1
  type     = "MX"
  proxied  = false
  priority = 10
}

resource "cloudflare_dns_record" "customcads_record_f56b5952c5c9bb7d7deacfc19904ed51" {
  zone_id  = cloudflare_zone.customcads_zone.id
  name     = "customcads.com"
  ttl      = 1
  type     = "MX"
  proxied  = false
  priority = 10
}

resource "cloudflare_dns_record" "customcads_record_61a651ed81257fd26ed48aee77d37211" {
  zone_id  = cloudflare_zone.customcads_zone.id
  name     = "customcads.com"
  ttl      = 1
  type     = "MX"
  proxied  = false
  priority = 15
}

resource "cloudflare_dns_record" "customcads_record_e973a0fafb27aa0395441251b23b6a01" {
  zone_id  = cloudflare_zone.customcads_zone.id
  name     = "customcads.com"
  ttl      = 1
  type     = "MX"
  proxied  = false
  priority = 20
}

resource "cloudflare_dns_record" "customcads_record_4e7982fdceae946181fdaa98cd4a978e" {
  zone_id = cloudflare_zone.customcads_zone.id
  name    = "customcads.com"
  ttl     = 1
  type    = "NS"
  proxied = false
}

resource "cloudflare_dns_record" "customcads_record_0153b85e13d387edf388f19b53435462" {
  zone_id = cloudflare_zone.customcads_zone.id
  name    = "customcads.com"
  ttl     = 1
  type    = "NS"
  proxied = false
}

resource "cloudflare_dns_record" "customcads_record_4e57c8ef37843141e6327e79e1a59b34" {
  zone_id = cloudflare_zone.customcads_zone.id
  name    = "customcads.com"
  ttl     = 1
  type    = "TXT"
  proxied = false
}

resource "cloudflare_dns_record" "customcads_record_6631c930ea40ef9a88141a1e23687d90" {
  zone_id = cloudflare_zone.customcads_zone.id
  name    = "customcads.com"
  ttl     = 1
  type    = "TXT"
  proxied = false
}

resource "cloudflare_dns_record" "customcads_record_ba9bc18f2704496bdcf943145874f479" {
  zone_id = cloudflare_zone.customcads_zone.id
  name    = "customcads.com"
  ttl     = 1
  type    = "TXT"
  proxied = false
}

resource "cloudflare_dns_record" "customcads_record_c6210b73f99e2f1adb226342df85aaa6" {
  zone_id = cloudflare_zone.customcads_zone.id
  name    = "staging.customcads.com"
  ttl     = 1
  type    = "AAAA"
  proxied = true
}

resource "cloudflare_dns_record" "customcads_record_9d50a8bb1b5c7589e9d8c70fce48670b" {
  zone_id = cloudflare_zone.customcads_zone.id
  name    = "www.customcads.com"
  ttl     = 1
  type    = "AAAA"
  proxied = true
}
