# keypair
resource "aws_key_pair" "mykeypair" {
  key_name = "my-ec2-key"
  public_key = file("my-ec2-key.pub")
}
# vpc
resource "aws_default_vpc" "mydefaultvpc" {
  tags = {
    Name = "Default VPC"
  }
}
# security group
resource "aws_security_group" "mysecuritygroup" {
  name = "my-ec2-security-group"
  description = "my ec2 instance security group"
  vpc_id = aws_default_vpc.mydefaultvpc.id
  tags = {
    Name = "My EC2 Security Group"
  }
}
# inbound rule - SSH
resource "aws_vpc_security_group_ingress_rule" "myingressrulessh" {
  security_group_id = aws_security_group.mysecuritygroup.id
  cidr_ipv4 = "0.0.0.0/0"
  from_port = 22
  ip_protocol = "tcp"
  to_port = 22
}
# inbound rule - HTTP
resource "aws_vpc_security_group_ingress_rule" "myingressrulehttp" {
  security_group_id = aws_security_group.mysecuritygroup.id
  cidr_ipv4 = "0.0.0.0/0"
  from_port = 80
  ip_protocol = "tcp"
  to_port = 80
}
# inbound rule - HTTPS
resource "aws_vpc_security_group_ingress_rule" "myingressrulehttps" {
  security_group_id = aws_security_group.mysecuritygroup.id
  cidr_ipv4 = "0.0.0.0/0"
  from_port = 443
  ip_protocol = "tcp"
  to_port = 443
}
# outbound rule
resource "aws_vpc_security_group_egress_rule" "myegressrule" {
  security_group_id = aws_security_group.mysecuritygroup.id
  cidr_ipv4 = "0.0.0.0/0"
  ip_protocol = "-1"
}
# instance
resource "aws_instance" "myec2instance" {
  count = 1
  key_name = aws_key_pair.mykeypair.key_name
  vpc_security_group_ids = [aws_security_group.mysecuritygroup.id]
  ami = "ami-091138d0f0d41ff90"
  instance_type = "t2.micro"
  root_block_device {
    volume_size = 8
    volume_type = "gp3"
  }
  tags = {
    Name = "My EC2 Instance"
  }
}