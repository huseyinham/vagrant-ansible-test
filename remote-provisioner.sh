#!/bin/bash

sudo -u vagrant -H sh -c "cat /vagrant/id_rsa.pub >> ~/.ssh/authorized_keys"
rm /vagrant/id_rsa.pub
