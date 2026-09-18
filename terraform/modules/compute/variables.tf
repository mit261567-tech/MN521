variable "project_name" {
  description = "Name prefix for resources"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "Name of the EC2 key pair to attach"
  type        = string
}

variable "public_subnet_id" {
  description = "Subnet for the bastion host"
  type        = string
}

variable "private_subnet_id" {
  description = "Subnet for the private application instance"
  type        = string
}

variable "bastion_sg_id" {
  description = "Security group for the bastion host"
  type        = string
}

variable "app_sg_id" {
  description = "Security group for the application instance"
  type        = string
}
