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

# 2. AWS variables 

# 3. Verify Terraform installation
verify the installation worked by opening a new terminal session and checking that terraform is available. 
```
terraform --version
```

# 4. Terraform Initialization
To run a new configuration, which initializes various local settings and data, 
and also asks for `access_key`, `secret_key` and `region` 
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

# 6. Scale Up and Down
To change the number of application servers, edit `main.tf` and change `count` value.
```
vi main.tf
 
  count = 3
```

# 7. Apply Changes 
Apply changes on your infrastructure
```
terraform apply 
```

# 8. Notes
Change `GIT_USER_CONTENT` variable inside `provisioning/userdata.sh` according to your environment.

---
[appropriate package]: <https://www.terraform.io/downloads.html>
