#!/bin/sh
chmod -R 777 /home
php-fpm
nginx
tail -f /var/log/nginx/access.log &
tail -f /var/log/nginx/error.log