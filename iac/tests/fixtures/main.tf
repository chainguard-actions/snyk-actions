# Simple Terraform fixture for Snyk IaC testing
resource "aws_s3_bucket" "example" {
  bucket = "my-test-bucket"
}
