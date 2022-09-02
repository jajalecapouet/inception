# SOURCES :
#	-	https://neptunet.fr/lamp-wordpress/
#

FROM	debian:buster

RUN		apt-get update && \
		apt-get install -y php7.3 php-mysqli php-fpm mariadb-client && \
		rm -rf /var/lib/apt/lists/*

ADD		https://fr.wordpress.org/latest-fr_FR.tar.gz /var/www
#RUN		cd /var/www && tar -xzvf latest-fr_FR.tar.gz && \
#		rm latest-fr_FR.tar.gz

ENTRYPOINT	["bash./usr/sbin/php-fpm7.3 -F"]