resource "render_postgres" "customcads_database" {
  name           = "customcads-staging"
  plan           = "free"
  region         = var.region
  environment_id = data.terraform_remote_state.global_backend.outputs.project_staging_id

  version       = 18
  database_name = "customcads_staging"
  database_user = "ninjatabg"

  ip_allow_list = [
    {
      cidr_block  = "10.57.174.177/32"
      description = "Phone Hotstop"
    },
    {
      cidr_block  = "192.168.1.23/32"
      description = "Home in Sofia"
    },
    {
      cidr_block  = "192.168.0.185/32"
      description = "Home in Burgas"
    },
  ]
}

import {
  to = render_postgres.customcads_database
  id = "dpg-d507p4vpm1nc73c64ur0-a"
}
