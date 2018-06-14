#!/usr/bin/env bash

sudo yum update
sudo yum install -y epel-release
sudo yum install -y ansible

cd /vagrant/ansible/
ansible-playbook wordpress.yml