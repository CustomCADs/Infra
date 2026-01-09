resource "render_web_service" "customcads_server" {
  name           = "server_sta"
  plan           = "starter"
  region         = var.region
  environment_id = data.terraform_remote_state.global_backend.outputs.project_staging_id

  runtime_source = {
    image = {
      image_url = "docker.io/customcads/backend"
      tag       = "staging"
    }
  }
  env_vars          = var.server_env
  health_check_path = "/health"

  custom_domains = [
    {
      name = "staging.api.customcads.com"
    }
  ]
}

import {
  to = render_web_service.customcads_server
  id = "srv-d5086i56ubrc73aao1kg"
}
