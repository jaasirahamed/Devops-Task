## 📁 Directory Structure
```
infra/
├── main.tf                 # Main infrastructure configuration
├── provider.tf             # AWS provider configuration
├── envs/                  # Environment-specific configurations
│   ├── prod/
│   │   ├── backend.tf     # Production backend configuration
│   │   └── prod.tfvars    # Production variables
│   └── test/
│       ├── backend.tf     # Test backend configuration
│       └── test.tfvars    # Test variables
└── modules/               # Reusable modules
    ├── network/           # VPC, subnets, routing
    ├── ecs/              # ECS cluster and security groups
```
