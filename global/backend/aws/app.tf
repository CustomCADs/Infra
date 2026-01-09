resource "aws_elastic_beanstalk_application" "customcads_app" {
  name        = "CustomCADs"
  description = "The Application for CustomCADs"
}

resource "aws_key_pair" "customcads_key_pair" {
  key_name   = "customcads-key-pair"
  public_key = file("../../../global/backend/aws/.eb-keys/customcads.pub")
}

resource "aws_s3_bucket" "customcads_versions" {
  bucket = "customcads-versions"
}

resource "aws_sns_topic" "customcads_notification" {
  name = "customcads-health-notifications"
}
