output "public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_eip.elastic_ip.public_ip
}
