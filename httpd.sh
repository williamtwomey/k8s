#!/bin/bash
sed 's/DBUSER/'$WORDPRESS_DB_USER'/' /var/www/html/vhost/kube.bbis.us/wp-config.php
sed 's/DBNAME/'$WORDPRESS_DB_NAME'/' /var/www/html/vhost/kube.bbis.us/wp-config.php
sed 's/DBHOST/'$WORDPRESS_DB_HOST'/' /var/www/html/vhost/kube.bbis.us/wp-config.php
sed 's/DBPASS/'$WORDPRESS_DB_PASS'/' /var/www/html/vhost/kube.bbis.us/wp-config.php
echo "Git pull worked `date`" > /tmp/hello
