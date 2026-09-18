output "bastion_sg_id" {
  description = "ID of the bastion security group"
  value       = aws_security_group.bastion.id
}

output "app_sg_id" {
  description = "ID of the application security group"
  value       = aws_security_group.app.id
}

output "key_name" {
  description = "Name of the EC2 key pair"
  value       = aws_key_pair.main.key_name
}
