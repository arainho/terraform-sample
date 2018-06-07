# rho
DevOps Exercice

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

- [x]Define Infrastructure using terraform.
- [x]Here you should assume that you are using an empty provider; 
- [x]You will need to make sure that all necessary dependencies are defined on the terraform file.

For the purpose of this exercise your setup should incorporate:
- [x]Setting up the necessary VPC, Security Groups, Subnets, Users and any other item you consider relevant.
- [x]2 Application Servers. Here you can use AWS or Google based images for centos/ redhat or Ubuntu. (You can choose the cloud provider and Linux distro you prefer for this exercise).
- [x]1 Load Balancer.

Deploy the application to created servers; 
- [x] you should trigger your deploy using ansible, puppet or chef when terraform initialisation is complete.

---
[appropriate package]: <https://www.terraform.io/downloads.html>
