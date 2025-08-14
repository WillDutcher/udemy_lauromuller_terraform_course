resource "random_id" "bucket_suffix" {
  byte_length = 6
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "example-bucket-${random_id.bucket_suffix.hex}"
}

resource "aws_s3_bucket" "terraform_backend" {
  bucket = "terraform-course-willdutcher-remote-backend"
}

output "example_bucket_name" {
  value = aws_s3_bucket.example_bucket.bucket
}

output "terraform_bucket_name" {
  value = aws_s3_bucket.terraform_backend.bucket
}