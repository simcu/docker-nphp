#!/bin/sh
php-fpm
nginx
tail -f /var/log/nginx/access.log &
tail -f /var/log/nginx/error.log