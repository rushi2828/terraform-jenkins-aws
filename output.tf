output "public_ip" {
  value = aws_instance.jenkins.public_ip
}

output "public_dns" {
  value = aws_instance.jenkins.public_dns
}