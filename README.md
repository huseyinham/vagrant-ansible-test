# Vagrant Ansible Test

This project is my attempt at the following task:

Your challenge is to write a piece of automation to run against a remote Ubuntu server. This should patch the server, reboot the server, and display the servers up time.

In order to make the project easily runnable I have used vagrant to provision both a ubuntu desktop machine (the control machine that the automation can be run from) and
a ubuntu server (the remote machine that should be patched and rebooted by the automation.) The Vagrantfile used here has been tested on both a mac and windows machine
running version 5.0.18 of virtual box and version 1.8.1 of vagrant.

## Setting up the vagrant virtual machines

You should be able to set up the two virtual machines described above by running the following command:

```
vagrant up
```

Once that completes you should have a ubuntu desktop machine (control) and a ubuntu server (remote.) You can log into the desktop/control machine using vagrant as both
the username and password. Once you have logged in you should be able to run the automation by running the following commands:

```
cd ansible-test
ansible-playbook patch.ubuntu.yaml -i inventory
```
