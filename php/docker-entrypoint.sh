#!/bin/bash

echo "Hello"
service php7.0-fpm start
service nginx start
cd /opt/app/current
composer install 
chown www-data.www-data -R /opt/app/current/var 
tail -f /var/log/nginx/symfony_error.log

