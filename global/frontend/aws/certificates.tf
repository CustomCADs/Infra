resource "aws_acm_certificate" "customcads_certificate" {
  domain_name               = "customcads.com"
  subject_alternative_names = ["*.customcads.com", "*.api.customcads.com"]

  validation_method = "DNS"
  key_algorithm     = "EC_prime256v1"

  lifecycle {
    create_before_destroy = true
  }
}
