#!/bin/bash
# Assignment 5 redo:
# Yiming Zhang 
# installing environment
# Oct 28th
sudo apt-get update -y
sudo apt-get install -y apache2 git 

git clone https://github.com/Langenoir1878/Environment-setup.git

mv ./Environment-setup/images /var/www/html/images
mv ./Application-setup/*.html /var/www/html
mv ./Application-setup/*.png var/www/html
mv ./Application-setup/images /var/www/html/images
mv ./Application-setup/*.php /var/www/html




echo "Launching environment has been successfully installed for Assignment 5 on " . time > /tmp/hello.txt