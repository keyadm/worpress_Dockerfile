#!/bin/sh

set -e

echo "Starting mysql daemon"
mysql -g 'daemon off;'

mysql -e "CREATE DATABASE wordpress;
CREATE USER 'kiennt1'@'localhost' IDENTIFIED BY 'caoml@2020';
GRANT ALL PRIVILEGES ON wordpress.* TO 'kiennt1'@'localhost';
FLUSH PRIVILEGES;
EXIT; "

mysql -e "DROP USER 'root'@'localhost';FLUSH PRIVILEGES;"
