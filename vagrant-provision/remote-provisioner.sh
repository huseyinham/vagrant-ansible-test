#!/bin/bash

# copy the public key that was created on the guest control machine into the
# authorised keys on the guest remote machine and then remove the key from
# the host machine
sudo -u vagrant -H sh -c "cat /vagrant/id_rsa.pub >> ~/.ssh/authorized_keys"
rm /vagrant/id_rsa.pub
