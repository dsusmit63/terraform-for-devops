output "local_file_name" {
  value = local_file.myfile.filename
}
output "local_file_content" {
  value = local_file.myfile.content
}
output "local_file_permission" {
  value = local_file.myfile.file_permission
}
output "ec2_public_ip" {
  value = aws_instance.myec2instance[*].public_ip
}
output "ec2_public_dns" {
  value = aws_instance.myec2instance[*].public_dns
}
