resource "aws_s3_bucket" "customcads_bucket" {
  bucket        = "customcads-production-frontend"
  force_destroy = true
}

resource "aws_s3_bucket_policy" "customcads_bucket_policy" {
  bucket = aws_s3_bucket.customcads_bucket.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid    = "AllowCloudFrontOACRead"
        Effect = "Allow"
        Principal = {
          Service = "cloudfront.amazonaws.com"
        }
        Action   = "s3:GetObject"
        Resource = "${aws_s3_bucket.customcads_bucket.arn}/*"
        Condition = {
          StringEquals = {
            "AWS:SourceArn" = aws_cloudfront_distribution.customcads_cdn.arn
          }
        }
      }
    ]
  })
}

resource "aws_s3_bucket_ownership_controls" "customcads_bucket_ownership" {
  bucket = aws_s3_bucket.customcads_bucket.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_cloudfront_origin_access_control" "customcads_bucket_oac" {
  name                              = "customcads-production-oac"
  description                       = "OAC for ${aws_s3_bucket.customcads_bucket.bucket}"
  origin_access_control_origin_type = "s3"
  signing_behavior                  = "always"
  signing_protocol                  = "sigv4"
}

resource "aws_s3_bucket_public_access_block" "customcads_production_access" {
  bucket                  = aws_s3_bucket.customcads_bucket.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
