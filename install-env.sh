#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y apache2 git

git clone https://github.com/Langenoir1878/Environment-setup.git

mv ./Environment-setup/images /var/www/html/images
mv ./Environment-setup/index.html /var/www/html

echo "Hi, install-env.sh has been called!" > /tmp/hello.txt


