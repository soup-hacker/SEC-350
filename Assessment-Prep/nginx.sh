#!/bin/bash

sudo apt update
sudo apt install nginx -y

cd /var/www/html
touch index.html

/bin/cat << EOM >index.html
  Miles Campbell nginx
EOM

sudo systemctl start nginx
sudo systemctl enable nginx
