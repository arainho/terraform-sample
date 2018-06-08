# 7. Checking requirements

- [ ] Define Infrastructure using terraform.
- [ ] Here you should assume that you are using an empty provider;
- [ ] You will need to make sure that all necessary dependencies are defined on the terraform file.

For the purpose of this exercise your setup should incorporate:
- [ ] Setting up the necessary VPC, Security Groups, Subnets, Users and any other item you consider relevant.
- [ ] 2 Application Servers. Here you can use AWS or Google based images for centos/ redhat or Ubuntu. (You can choose the cloud provider and Linux distro you prefer for this exercise).
- [ ] 1 Load Balancer.

Deploy the application to created servers;
- [ ] you should trigger your deploy using ansible, puppet or chef when terraform initialisation is complete.
