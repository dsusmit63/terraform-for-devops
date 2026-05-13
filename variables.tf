variable "bucket_name" {
  type = list(string)
  description = "Name of s3 bucket"
}
variable "bucket_tag" {
  type = list(string)
  description = "Tag of s3 bucket"
}
variable "s3_bucket_count" {
  type = number
  description = "Number of S3 buckets"
}
variable "ec2_instance_count" {
  type = number
  description = "Number of ec2 instance"
}
variable "ec2_instance_ami" {
  type = string
  description = "AMI of ec2 instance"
}
variable "ec2_instance_type" {
  type = list(string)
  description = "Type of ec2 instance"
}
variable "ec2_instance_root_volume_size" {
  type = list(number)
  description = "Volume size of ec2 instnace"
}
variable "ec2_instance_root_volume_type" {
  type = string
  description = "Volume type of ec2 instance"
}
variable "ec2_instance_name" {
  type = string
  description = "Name of ec2 instance"
}
variable "environment" {
  type = string
  description = "Name of environment"
}