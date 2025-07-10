aws_region = "us-east-1"
environment = "test"
project_name = "devops-app"
application_name = "app"
owner = "devops-team"
cluster_suffix = "ecs-cluster"
secret_name = "app-secret"

# Network configuration
vpc_cidr = "10.1.0.0/16"
azs = ["us-east-1a", "us-east-1b", "us-east-1c"]
public_subnets = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]
private_subnets = ["10.1.101.0/24", "10.1.102.0/24", "10.1.103.0/24"]

# Application configuration
app_secret = "test-secret-value-123"

# SSL Certificate Configuration (using existing certificate for HTTPS)
test_certificate_arn = "arn:aws:acm:us-east-1:028425946832:certificate/4ca5d893-a848-45cc-90a0-37316d26262d"
test_domain_name = "app-test.codeopssolutions.com"

# Backend configuration
state_bucket_name = "devops-app-terraform-state-test"
dynamodb_table_name = "terraform-lock-test"
state_key_prefix = "test/terraform.tfstate"

# ECS Configuration
task_cpu = "256"
task_memory = "512"
desired_count = 1
container_port = 5000
account_id = "028425946832"
container_image = "028425946832.dkr.ecr.us-east-1.amazonaws.com/devops-app-test:latest"
