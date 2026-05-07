resource "aws_s3_bucket" "mybucket" {
  bucket = "my-terra-s3-bucket-020526"
  tags = {
    Name = "My-Terra-S3-Bucket-020526"
  }
}