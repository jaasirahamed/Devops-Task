bucket         = "devops-app-terraform-state-test"
key            = "test/terraform.tfstate"
region         = "us-east-1"
dynamodb_table = "terraform-state-lock"
encrypt        = true
