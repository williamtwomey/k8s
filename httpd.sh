#!/bin/bash
sed -i 's/DBUSER/'$WORDPRESS_DB_USER'/' /var/www/html/vhost/kube.bbis.us/wp-config.php
sed -i 's/DBNAME/'$WORDPRESS_DB_NAME'/' /var/www/html/vhost/kube.bbis.us/wp-config.php
sed -i 's/DBHOST/'$WORDPRESS_DB_HOST'/' /var/www/html/vhost/kube.bbis.us/wp-config.php
sed -i 's/DBPASS/'$WORDPRESS_DB_PASS'/' /var/www/html/vhost/kube.bbis.us/wp-config.php
echo "Git pull worked `date`" > /tmp/hello
