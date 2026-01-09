resource "cloudflare_r2_bucket" "customcads_development_bucket" {
  account_id    = var.cloudflare_account_id
  name          = "customcads-development-bucket"
  location      = "EEUR"
  storage_class = "Standard"
}
resource "cloudflare_r2_bucket_cors" "customcads_development_bucket_cors" {
  account_id  = var.cloudflare_account_id
  bucket_name = cloudflare_r2_bucket.customcads_development_bucket.name
  rules = [{
    allowed = {
      headers = ["*"]
      methods = ["HEAD", "GET", "PUT", "POST", "DELETE"]
      origins = ["https://localhost:7295", "https://localhost:5173", "https://localhost:5174", "http://localhost:4173"]
    }
    expose_headers  = ["ETag", "x-amz-id-2", "x-amz-request-id", "x-amz-meta-file-name"]
    max_age_seconds = 3000
    id              = "CustomCADs Development Bucket CORS rule"
  }]
}
