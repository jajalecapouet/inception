# SOURCES :
#	-	https://neptunet.fr/lamp-wordpress/
#

FROM	debian:buster

RUN		apt-get update && \
		apt-get install -y wordpress php7.3 php7.3-mysql php7.3-gd php7.3-curl apache2 libapache2-mod-php7.3 && \
		rm -rf /var/lib/apt/lists/*

CMD	["bash"]