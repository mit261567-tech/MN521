output "vpc_id" {
  description = "ID of the VPC"
  value       = module.network.vpc_id
}

output "vpc_cidr" {
  description = "CIDR block of the VPC"
  value       = module.network.vpc_cidr
}

output "availability_zones" {
  description = "Availability zones spanned by the deployment"
  value       = module.network.availability_zones
}

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = module.network.public_subnet_ids
}

output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value       = module.network.private_subnet_ids
}

output "bastion_public_ip" {
  description = "Public IP of the bastion host"
  value       = module.compute.bastion_public_ip
}

output "app_private_ip" {
  description = "Private IP of the application instance"
  value       = module.compute.app_private_ip
}

output "ami_id" {
  description = "AMI used for both instances"
  value       = module.compute.ami_id
}

output "ssh_to_bastion" {
  description = "Command to SSH to the bastion host"
  value       = "ssh -i ~/.ssh/mn521 ec2-user@${module.compute.bastion_public_ip}"
}

output "ssh_to_app" {
  description = "Command to reach the private instance through the bastion"
  value       = "ssh -i ~/.ssh/mn521 -J ec2-user@${module.compute.bastion_public_ip} ec2-user@${module.compute.app_private_ip}"
}
