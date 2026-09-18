variable "aws_region" {
  description = "AWS region for all resources"
  type        = string
  default     = "ap-southeast-2"
}

variable "project_name" {
  description = "Name prefix applied to every resource"
  type        = string
  default     = "mn521"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for the public subnets, one per availability zone"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for the private subnets, one per availability zone"
  type        = list(string)
  default     = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "instance_type" {
  description = "EC2 instance type for both the bastion and the private instance"
  type        = string
  default     = "t3.micro"
}

variable "admin_cidr" {
  description = "Administrator public IP in CIDR form, permitted to SSH to the bastion"
  type        = string

  validation {
    condition     = can(cidrnetmask(var.admin_cidr))
    error_message = "admin_cidr must be valid CIDR notation, for example 203.0.113.45/32."
  }
}

variable "public_key_path" {
  description = "Path to the local SSH public key uploaded as the EC2 key pair"
  type        = string
  default     = "~/.ssh/mn521.pub"
}
