#!/bin/bash
#add fix to exercise5-server2 here
sudo su
sudo touch /home/vagrant/.ssh/id_rsa.pub
sudo chmod 700 /home/vagrant/.ssh/*
sudo chown vagrant:vagrant /home/vagrant/.ssh/*
sudo ssh-keygen -t rsa
cat .ssh/id_rsa.pub | ssh server2 'cat >> .ssh/authorized_keys'
sudo apt-get install sshpass

