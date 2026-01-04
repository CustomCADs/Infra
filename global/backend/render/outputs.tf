output "project_production_id" {
  value = render_project.customcads_project.environments["Production"].id
}

output "project_staging_id" {
  value = render_project.customcads_project.environments["Staging"].id
}

