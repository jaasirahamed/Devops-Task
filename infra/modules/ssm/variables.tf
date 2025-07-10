variable "parameter_name" {
  description = "Name of the SSM parameter"
  type        = string
}

variable "app_secret" {
  description = "Application secret value"
  type        = string
  sensitive   = true
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "project_name" {
  description = "Name of the project"
  type        = string
}

variable "tags" {
  description = "Common tags to be applied to all resources"
  type        = map(string)
  default     = {}
}

variable "ecs_sg_id" {
  description = "ECS task security group ID"
  type        = string
}


variable "vpc_id" {
  description = "VPC ID for the VPC endpoint"
  type        = string
}

variable "private_subnet_ids" {
  description = "Private subnet IDs for the VPC endpoint"
  type        = list(string)
}

variable "aws_region" {
  description = "AWS region"
  type        = string
}
