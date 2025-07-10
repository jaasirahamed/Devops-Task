output "parameter_arn" {
  description = "ARN of the SSM parameter"
  value       = aws_ssm_parameter.app_secret.arn
}

output "parameter_name" {
  description = "Name of the SSM parameter"
  value       = aws_ssm_parameter.app_secret.name
}

output "parameter_version" {
  description = "SSM parameter version (if known)"
  value       = aws_ssm_parameter.app_secret.version
}
