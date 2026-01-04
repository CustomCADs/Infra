resource "render_project" "customcads_project" {
  name = "Backend"
  environments = {
    "Production" = {
      name             = "Production"
      protected_status = "unprotected"
    }
    "Staging" = {
      name             = "Staging"
      protected_status = "unprotected"
    }
  }
}

import {
  to = render_project.customcads_project
  id = var.project_id
}
