resource "aws_s3_bucket" "mybucket" {
  bucket = var.bucket_name
  tags = {
    Name = var.bucket_tag
  }
}