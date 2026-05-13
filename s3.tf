resource "aws_s3_bucket" "mybucket" {
  count = var.s3_bucket_count
  bucket = var.bucket_name[count.index]
  tags = {
    Name = var.bucket_tag[count.index]
  }
}