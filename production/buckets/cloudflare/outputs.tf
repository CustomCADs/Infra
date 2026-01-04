output "bucket_name" {
  value = cloudflare_r2_bucket.customcads_bucket.name
}

output "bucket_endpoint" {
  value = "https://${var.account_id}.r2.cloudflarestorage.com/${cloudflare_r2_bucket.customcads_bucket.name}"
}
