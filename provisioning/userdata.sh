#!/bin/bash -v

JAR_FILE="gs-rest-service-0.1.0.jar"
GIT_USER_CONTENT="https://raw.githubusercontent.com/arainho/rho/master/"

# dependencies
apt-get update -y
apt-get install -y software-properties-common ansible curl git 
apt-add-repository -y ppa:ansible/ansible
apt-get update -y
ansible-galaxy install ansible-springboot

# grab webapp jar and ansible playbook 
curl ${GIT_USER_CONTENT}/src/${JAR_FILE} -o ${JAR_FILE}
curl ${GIT_USER_CONTENT}/provisioning/ansible_hosts -o ansible_hosts
curl ${GIT_USER_CONTENT}/provisioning/spring-boot.yml -o spring-boot.yml

# setup spring-boot
ansible-playbook -i ansible_hosts spring-boot.yml

