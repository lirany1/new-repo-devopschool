#!/bin/bash
#add fix to exercise3 here got a error when trying to get to the url :Forbidde You don't have permission to access / on this server.
#Apache/2.2.22 (Ubuntu) Server at 192.168.100.10 Port 80 after the fix we have a message : Hello world
sudo sed -i -e '0,/deny from all/ s/deny from all/allow from all/' /etc/apache2/sites-available/default
sudo service apache2 restart
sudo service apache2 start-htcacheclean
