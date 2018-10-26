#!/bin/bash
sed -i 's/DBUSER/'$WORDPRESS_DB_USER'/' /var/www/html/kube.bbis.us/wp-config.php
sed -i 's/DBNAME/'$WORDPRESS_DB_NAME'/' /var/www/html/kube.bbis.us/wp-config.php
sed -i 's/DBHOST/'$WORDPRESS_DB_HOST'/' /var/www/html/kube.bbis.us/wp-config.php
sed -i 's/DBPASS/'$WORDPRESS_DB_PASSWORD'/' /var/www/html/kube.bbis.us/wp-config.php
echo "Git pull worked `date`" > /tmp/hello
