





sleep 10

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv -f wp-cli.phar /usr/local/bin/wp

#if [ ! -e "wp-config.php" ]; then
#	wp config create	--allow-root \
#				--dbname=$MARIADB_DATABASE \
#				--dbuser=$MARIADB_USER \
#				--dbpass=$MARIADB_PASSWORD \
#				--dbhost=mariadb:3306 --path='/var/www/wordpress'
#fi


/usr/local/bin/wp --info
/usr/local/bin/wp core download --allow-root --path="/var/www/html"

rm -f /var/www/html/wp-config.php
cp ./wp-config.php /var/www/html/wp-config.php
#cp ./wp-config.php /var/www/wordpress/wp-config.php

#/usr/local/bin/wp core install \
#					--allow-root \
#					--path="/var/www/html" \
#					--url="llion.42.fr" \
#					--title="inception" \
#					--admin_user="godfather" \
#					--admin_password="godfather_passwd" \
#					--admin_email="godfather@42mulhouse.fr" \
#					--skip-email
#
#/usr/local/bin/wp user create \
#					--allow-root \
#					--path="/var/www/html" \
#					"llion" \
#					"llion@42mulhouse.fr" \
#					--role=author \
#					--user_pass="llion_passwd"

/usr/local/bin/wp core install \
					--allow-root \
					--path="/var/www/html" \
					--url=${WORDPRESS_HOST} \
					--title=${WORDPRESS_TITLE} \
					--admin_user=${WORDPRESS_ADMIN_USER} \
					--admin_password=${WORDPRESS_ADMIN_PASSWORD} \
					--admin_email=${WORDPRESS_ADMIN_EMAIL} \
					--skip-email

/usr/local/bin/wp user create \
					--allow-root \
					--path="/var/www/html" \
					${WORDPRESS_USER} \
					${WORDPRESS_EMAIL} \
					--role=author \
					--user_pass=${WORDPRESS_PASSWORD}

exec php-fpm7.4 -F
