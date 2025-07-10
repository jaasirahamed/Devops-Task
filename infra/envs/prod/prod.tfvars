aws_region = "us-east-1"
environment = "prod"
project_name = "devops-app"
application_name = "app"
owner = "devops-team"
cluster_suffix = "ecs-cluster"
secret_name = "app-secret"

# Network configuration
vpc_cidr = "10.0.0.0/16"
azs = ["us-east-1a", "us-east-1b", "us-east-1c"]
public_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
private_subnets = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

# Application configuration
app_secret = "prod-secret-value-456"

# SSL Certificate Configuration
prod_certificate_arn = "arn:aws:acm:us-east-1:028425946832:certificate/25628215-3bf1-4d9b-9802-dec3d5a59f26"
domain_name = "app.codeopssolutions.com"

# Backend configuration
state_bucket_name = "devops-app-terraform-state-prod"
dynamodb_table_name = "terraform-lock-prod"
state_key_prefix = "prod/terraform.tfstate"

# ECS Configuration
task_cpu = "512"
task_memory = "1024"
desired_count = 2
container_port = 5000
account_id = "028425946832"
container_image = "028425946832.dkr.ecr.us-east-1.amazonaws.com/devops-app-prod:latest"