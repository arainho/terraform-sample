#!/bin/bash -v

JAR_FILE="gs-rest-service.jar"
GIT_USER_CONTENT="https://raw.githubusercontent.com/arainho/terraform-sample/master/"

# dependencies
apt-get update -y
apt-get install -y software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get update -y
apt-get install -y ansible curl git 
ansible-galaxy install remyma.springboot

# grab webapp jar and ansible playbook 
curl ${GIT_USER_CONTENT}/src/${JAR_FILE} -o ${JAR_FILE}
curl ${GIT_USER_CONTENT}/provisioning/ansible_hosts -o ansible_hosts
curl ${GIT_USER_CONTENT}/provisioning/spring-boot.yml -o spring-boot.yml

# setup spring-boot
ansible-playbook -i ansible_hosts spring-boot.yml

