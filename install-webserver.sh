#!/bin/bash

sudo apt-get install -y apache2 git php5 php5-mysql php5-curl mysql-client curl

sudo curl -sS http://getcomposer.org/installer | php
sudo php composer.phar require aws/aws-sdk-php

sudo git clone https://github.com/Langenoir1878/Application-setup.git

mv ./Application-setup/images /var/www/html/images
mv ./Application-setup/index.html /var/www/html

echo "Hi, install-webserver.sh has been called!" > /tmp/hello.txt

