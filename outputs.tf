output "ec2_public_ip" {
  description = "PUBLIC IP of the EC2 provisioned"
  value       = aws_instance.my_ec2.public_ip
}

output "ec2_public_dns" {
  description = "DNS of the EC2 Provisioned"
  value       = aws_instance.my_ec2.public_dns
}