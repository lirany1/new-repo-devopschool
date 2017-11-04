#!/bin/bash
#add fix to exercise5-server1 here
sudo su
sudo touch /home/vagrant/.ssh/id_rsa.pub
sudo chmod 700 /home/vagrant/.ssh/*
sudo chown vagrant:vagrant /home/vagrant/.ssh/*
sudo ssh-keygen -t rsa
cat .ssh/id_rsa.pub | ssh server1 'cat >> .ssh/authorized_keys'
sudo apt-get install sshpass
