#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y apache2 git php5 php5-curl mysql-client curl php5-mysql

git clone https://github.com/Langenoir1878/Environment-setup.git

mv ./Environment-setup/images /var/www/html/images
mv ./Environment-setup/index.html /var/www/html
mv ./Application-setup/images /var/www/html/images
mv ./Application-setup/*.php /var/www/html


curl -sS https://getcomposer.org/installer | sudo php &> /tmp/getcomposer.txt

# ref Repo:https://github.com/jhajek/itmo-544-444-env/blob/master/install-webserver.sh

sudo php composer.phar require aws/aws-sdk-php &> /tmp/runcomposer.txt

sudo mv vendor /var/www/html &> /tmp/movevendor.txt

sudo php /var/www/html/setup.php &> /tmp/database-setup.txt



echo "Hi, install-env.sh has been called!" > /tmp/hello.txt


