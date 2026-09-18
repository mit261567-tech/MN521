output "bastion_public_ip" {
  description = "Public IP of the bastion host"
  value       = aws_instance.bastion.public_ip
}

output "bastion_private_ip" {
  description = "Private IP of the bastion host"
  value       = aws_instance.bastion.private_ip
}

output "bastion_id" {
  description = "Instance ID of the bastion host"
  value       = aws_instance.bastion.id
}

output "app_private_ip" {
  description = "Private IP of the application instance"
  value       = aws_instance.app.private_ip
}

output "app_id" {
  description = "Instance ID of the application instance"
  value       = aws_instance.app.id
}

output "ami_id" {
  description = "AMI used for both instances"
  value       = data.aws_ami.amazon_linux_2023.id
}
