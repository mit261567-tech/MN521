variable "project_name" {
  description = "Name prefix for resources"
  type        = string
}

variable "vpc_id" {
  description = "VPC in which to create the security groups"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR, used to scope private egress"
  type        = string
}

variable "admin_cidr" {
  description = "Administrator IP permitted to reach the bastion on TCP 22"
  type        = string
}

variable "public_key_path" {
  description = "Path to the local SSH public key"
  type        = string
}
