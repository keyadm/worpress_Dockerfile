#!/bin/sh

set -e

echo "Starting the nginx -php daemon"
service php7.4-fpm start

nginx -g 'daemon off;'

