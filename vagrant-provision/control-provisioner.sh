#!/bin/bash

# generate an ssh key pair and then copy the public key back to the host machine
sudo -u vagrant -H sh -c "ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa"
sudo -u vagrant -H sh -c "cp ~/.ssh/id_rsa.pub /vagrant/id_rsa.pub"

# install ansible on guest control machine
sudo -u vagrant -H sh -c "sudo apt-get update"
sudo -u vagrant -H sh -c "sudo apt-get install software-properties-common"
sudo -u vagrant -H sh -c "sudo apt-add-repository ppa:ansible/ansible -y"
sudo -u vagrant -H sh -c "sudo apt-get update"
sudo -u vagrant -H sh -c "sudo apt-get install ansible -y --force-yes"

# copy ansible files from local machine to guest control machine in a directory called ansible-test
sudo -u vagrant -H sh -c "mkdir ~/ansible-test"
sudo -u vagrant -H sh -c "cp /vagrant/ansible/inventory ~/ansible-test/inventory"
sudo -u vagrant -H sh -c "cp /vagrant/ansible/my-playbook.yml ~/ansible-test/my-playbook.yml"
sudo -u vagrant -H sh -c "cp /vagrant/ansible/dev-ops-script.sh ~/ansible-test/dev-ops-script.sh"
