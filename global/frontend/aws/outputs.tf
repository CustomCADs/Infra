output "cloudfront_cache_policy_id" {
  value = aws_cloudfront_cache_policy.customcads_cache_policy.id
}

output "certificate_arn" {
  value = aws_acm_certificate.customcads_certificate.arn
}

output "security_headers_policy_id" {
  value = aws_cloudfront_response_headers_policy.customcads_security.id
}

output "index_cache_policy_id" {
  value = aws_cloudfront_cache_policy.customcads_index.id
}

output "assets_cache_policy_id" {
  value = aws_cloudfront_cache_policy.customcads_assets.id
}
