# Deploy with Terraform and provisioning with Ansible 
- deploy 1 ELB and 2 EC2 ubuntu instances        ( terraform )
- provisioning 2 Spring Boot Application Servers ( ansible )

# 0. Generate SSH Keys 
First generate public/private rsa key pair
```
ssh-keygen -t rsa -b 4096 -C "Terraform key" -f terraform_rsa
```

# 1. Install terraform
To install Terraform, find the [appropriate package] for your system, download and install it.

# 2. Setup AWS variables 
First edit `example.tfvars` file:
```
vi example.tfvars
```

Then assign variables `access_key`, `secret_key` and `region` 
```
access_key = "your_aws_access_key"
secret_key = "your_aws_secret_key"
region     = "us-east-1"
```

# 3. Verify Terraform installation
verify the installation worked by opening a new terminal session and checking that terraform is available. 
```
terraform --version
```

# 4. Terraform Initialization
To run a new configuration, which initializes various local settings and data. 
```
terraform init
```

# 5. Terraform Plan
Generate an execution plan 
```
terraform plan -out="./terraform.plan"
```

# 6. Scale Up and Down
To change the number of application servers, edit `main.tf` and change `count` value.
```
vi main.tf
 
  count = 3
```

# 7. Notes
Change `GIT_USER_CONTENT` variable inside `provisioning/userdata.sh` according to your environment.

---
[appropriate package]: <https://www.terraform.io/downloads.html>
