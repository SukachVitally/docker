#!/bin/bash

echo "Hello"
service php7.0-fpm start
service nginx start
cd /opt/app/current
composer install 
tail -f /var/log/nginx/symfony_error.log
