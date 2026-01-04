resource "aws_s3_bucket" "customcads_development_bucket" {
  bucket = "customcads-development-bucket"
}
resource "aws_s3_bucket_cors_configuration" "customcads_development_bucket_cors" {
  bucket = aws_s3_bucket.customcads_development_bucket.id

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["HEAD", "GET", "PUT", "POST", "DELETE"]
    allowed_origins = ["https://localhost:7295", "https://localhost:5173", "https://localhost:5174", "http://localhost:4173"]
    expose_headers  = ["ETag", "x-amz-id-2", "x-amz-request-id", "x-amz-meta-file-name"]
    max_age_seconds = 3000
  }
}
