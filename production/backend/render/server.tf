resource "render_web_service" "customcads_server" {
  name           = "server_pro"
  plan           = "starter"
  region         = var.region
  environment_id = data.terraform_remote_state.global_backend.outputs.project_production_id

  runtime_source = {
    image = {
      image_url = "docker.io/customcads/backend"
      tag       = "production"
    }
  }
  env_vars          = var.server_env
  health_check_path = "/health"

  custom_domains = [
    {
      name = "api.customcads.com"
    },
  ]
}
