resource "cloudflare_ruleset" "customcads_apex" {
  zone_id = data.terraform_remote_state.global_frontend.outputs.zone_id
  name    = "Apex → www"
  kind    = "zone"
  phase   = "http_request_dynamic_redirect"

  rules = [{
    expression = "(http.host eq \"customcads.com\")"
    action     = "redirect"

    action_parameters = {
      from_value = {
        status_code = 301
        target_url = {
          expression = "concat(\"https://www.customcads.com\", http.request.uri)"
        }
      }
    }
  }]
}
