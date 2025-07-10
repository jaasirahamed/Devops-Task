resource "aws_ssm_parameter" "app_secret" {
  name  = var.parameter_name
  type  = "SecureString"
  value = var.app_secret

  tags = merge(var.tags, {
    Name = "${var.project_name}-${var.environment}-app-secret"
  })
}

resource "aws_vpc_endpoint" "ssm" {
  vpc_id       = var.vpc_id
  service_name = "com.amazonaws.${var.aws_region}.ssm"
  vpc_endpoint_type = "Interface"
  subnet_ids   = var.private_subnet_ids
  security_group_ids = [var.ecs_sg_id]
}

resource "aws_vpc_endpoint" "ssm_messages" {
  vpc_id       = var.vpc_id
  service_name = "com.amazonaws.${var.aws_region}.ssmmessages"
  vpc_endpoint_type = "Interface"
  subnet_ids   = var.private_subnet_ids
  security_group_ids = [var.ecs_sg_id]
}

resource "aws_vpc_endpoint" "ec2messages" {
  vpc_id       = var.vpc_id
  service_name = "com.amazonaws.${var.aws_region}.ec2messages"
  vpc_endpoint_type = "Interface"
  subnet_ids   = var.private_subnet_ids
  security_group_ids = [var.ecs_sg_id]
}
