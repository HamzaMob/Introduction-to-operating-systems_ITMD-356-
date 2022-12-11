#!/bin/bash

###################################################
# Final Project Submission by: MUHAMMAD HAMZA MOBEEN #
###################################################
# Use the sleep command to make the script sleep so you can read the output
# The echo commands are for me to break up the output and a guide for you to see 
# the results.  
# Place your code inbetween the echo and the sleep command, per section

sudo apt-get update
#### Section One
echo "Starting Section 1"

echo "Lincoln $NAMES"
echo "Evelyn $NAMES"
echo "Joseph $NAMES"

echo $NAMES

sleep 2
#### Section Two
echo "Starting Section 2"
for NAMES in ${NAMES[@]};
do
	sudo useradd -c "user for ITMO-356 Final" -d /home/$NAMES -M $NAMES
	echo "user $NAMES was created"
done

cat /etc/passwd



sleep 2
#### Section Three
echo "Starting Section 3"
# ip address
ip a sh
#apache2 installing
sudo apt-get install apache2
# enable and start the apache
sudo systemctl enable apache2.service
sudo systemctl start apache2.service

#status of apache2
sudo systemctl status apache2.service

sleep 2
#### Section Four
echo "Starting Section 4"
# Installing zfs
sudo apt-get install zfsutils-linux
# creating a mirrored pool named datapool
sudo zpool create datapool mirror /dev/sdb /dev/sdc
# showing the sttus 
sudo zpool status

sleep 2
#### Section Five
echo "Starting Section 5"
# INSTALLING NODEJS

sudo apt-get install curl
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash - 
sudo apt-get install -y nodejs
# version of nodejs
node -v
# installing express using npm
npm install express
sleep 2
#### Section Six
echo "Starting Section 6"
# installing firewalld
sudo apt-get install firewalld
# enabling firewalld
sudo systemctl enable firewalld.service
# starting firewalld
sudo systemctl start firewalld.service
# to open services permanatly http and https
firewall-cmd
# firewalld to open port 3000/tcp
firewall-cmd
# reload
sudo systemctl reload firewalld.service
# showing all the open ports
firewall-cmd --zone=public --list-all 

sleep 2
#### Section Seven
echo "Starting Section 7"
# installing mariadb
sudo apt-get install apache2 mariadb-server php php-mysql
sudo apt-get install apache2 php mariadb-server
# restarting
sudo systemctl restart apache2.service
# importing mysql files
sudo mysql -u root < create-database.sql 
sudo mysql -u root < create-user-and-grant-permissions.sql


sleep 2
#### Section Eight
echo "Starting Section 8"
# wordpress installation
wget [https://wordpress.org/latest.tar.gz] https://wordpress.org/latest.tar.gz 
# extracting the tarball
tar -xvzf latest.tar.gz

sudo cp wp-config-sample.php ~
# changing the name of a file
sudo mv wp-config-sample.php wp-config.php
# changing the database_user_name 
sudo sed -i "s/database_name_here/wp/" ~/wordpress/wp-config.php
# changing username_here to worker
sudo sed -i "s/username_here/worker/" ~/wordpress/wp-config.php
# changing password
sudo sed -i "s/password_here/cluster/" ~/wordpress/wp-config.php
# moving the directory
sudo mv wordpress /var/www/html

sleep 2
