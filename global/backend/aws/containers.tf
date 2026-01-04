resource "aws_ecr_repository" "customcads_container_registry" {
  name = "ninjatabg/customcads"
  encryption_configuration {
    encryption_type = "KMS"
  }
}
