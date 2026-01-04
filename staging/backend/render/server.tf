resource "render_web_service" "customcads_server" {
  name   = "customcads-staging"
  plan   = "free"
  region = var.region

  runtime_source = {
    image = {
      image_url = "docker.io/customcads/backend"
      tag       = "staging"
    }
  }

  custom_domains = [
    {
      name = "staging.api.customcads.com"
    },
    {
      name = "new.api.customcads.com"
    }
  ]

  health_check_path = "/health"
  environment_id    = data.terraform_remote_state.global_backend.outputs.project_staging_id

  env_vars = var.server_env

  previews = {
    generation = "off"
  }
}

import {
  to = render_web_service.customcads_server
  id = "srv-d5086i56ubrc73aao1kg"
}
