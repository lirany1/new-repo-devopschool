#!/bin/bash
#add fix to exercise2 here
#You don't have permission to access /ascii/ab/007.txt on this server- we need to delete the wrong host 
sudo sed -i '/127.0.0.1 www.ascii-art.de/d' /etc/hosts
