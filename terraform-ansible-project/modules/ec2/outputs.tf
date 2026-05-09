output "public_ips" {
  value = aws_instance.name[*].public_ip
}