output "ec2_public_ip" {
  value = aws_instance.myec2instance[*].public_ip
}
output "ec2_public_dns" {
  value = aws_instance.myec2instance[*].public_dns
}