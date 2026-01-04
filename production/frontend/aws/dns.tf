resource "aws_cloudfront_function" "customcads_apex_redirect" {
  name    = "ApexToWWWRedirect"
  runtime = "cloudfront-js-2.0"
  comment = "Redirect customcads.com → www.customcads.com"
  code    = file("apex-redirect.js")
}
