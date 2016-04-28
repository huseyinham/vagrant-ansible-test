#!/bin/bash

sudo -u vagrant -H sh -c "ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa"
sudo -u vagrant -H sh -c "mv ~/.ssh/id_rsa.pub /vagrant/id_rsa.pub"
