resource "render_postgres" "customcads_database" {
  name           = "database_pro"
  region         = var.region
  environment_id = data.terraform_remote_state.global_backend.outputs.project_production_id

  plan         = "basic_256mb"
  disk_size_gb = 1

  version       = 18
  database_name = "customcads_production"
  database_user = "ninjatabg"

  ip_allow_list = [
    {
      cidr_block  = "10.57.174.177/32"
      description = "Phone Hotstop"
    },
    {
      cidr_block  = "78.154.15.91/32"
      description = "Home in Sofia"
    },
    {
      cidr_block  = "192.168.0.185/32"
      description = "Home in Burgas"
    },
  ]
}
