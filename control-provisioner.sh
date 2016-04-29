#!/bin/bash

sudo -u vagrant -H sh -c "ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa"
sudo -u vagrant -H sh -c "cp ~/.ssh/id_rsa.pub /vagrant/id_rsa.pub"

sudo -u vagrant -H sh -c "sudo apt-get update"
sudo -u vagrant -H sh -c "sudo apt-get install software-properties-common"
sudo -u vagrant -H sh -c "sudo apt-add-repository ppa:ansible/ansible -y"
sudo -u vagrant -H sh -c "sudo apt-get update"
sudo -u vagrant -H sh -c "sudo apt-get install ansible -y"

sudo -u vagrant -H sh -c "mkdir ~/ansible-test"
sudo -u vagrant -H sh -c "cp /vagrant/inventory ~/ansible-test/inventory"


