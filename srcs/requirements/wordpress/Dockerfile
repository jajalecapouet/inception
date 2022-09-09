# SOURCES :
#	-	https://neptunet.fr/lamp-wordpress/
#	-	https://fr.wordpress.org/support/article/how-to-install-wordpress/
#

FROM	debian:buster

RUN		apt-get update && \
		apt-get install -y php7.3 \
		php-mysqli \
		php-fpm \
		mariadb-client && \
		rm -rf /var/lib/apt/lists/*

COPY	./php-fpm.conf /etc/php/7.3/fpm/pool.d

RUN		mkdir inception.com
ADD		https://fr.wordpress.org/latest-fr_FR.tar.gz /inception.com
RUN		tar -xzvf /inception.com/latest-fr_FR.tar.gz && \
		rm /inception.com/latest-fr_FR.tar.gz
#RUN		rm -f /inception.com/wp-config-sample.php
#COPY	./wp-config.php /inception.com
RUN		mkdir /run/php

ENTRYPOINT		/usr/sbin/php-fpm7.3 -F