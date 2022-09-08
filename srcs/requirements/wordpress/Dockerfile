# SOURCES :
#	-	https://neptunet.fr/lamp-wordpress/
#

FROM	debian:buster

RUN		apt-get update && \
		apt-get install -y php7.3 php-mysqli php-fpm mariadb-client && \
		rm -rf /var/lib/apt/lists/*

COPY	./www.conf /etc/php/7.3/fpm/pool.d

RUN		mkdir /var/www && cd /var/www
ADD		https://fr.wordpress.org/latest-fr_FR.tar.gz .
RUN		tar -xzvf latest-fr_FR.tar.gz && \
		rm latest-fr_FR.tar.gz
RUN		mkdir /run/php

CMD		/usr/bin/php-fpm7.3 -F