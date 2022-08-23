#	sources:
#			https://www.youtube.com/watch?v=QLzwJpSkm8w&list=PLn6POgpklwWq0iz59-px2z-qjDdZKEvWd&index=9&ab_channel=xavki
#			https://www.ipswitch.com/blog/how-to-use-openssl-to-generate-certificates

FROM	debian:buster

RUN		apt-get update && \
		apt-get install -y nginx openssl vim && \
		rm -rf /var/lib/apt/lists/* && \
		mkdir certCA

VOLUME	/var/www/html/

COPY	./conf/site_config1.conf /etc/nginx/sites-enabled/site_config1.conf

RUN	openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:4096 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt -subj "/C=FR/ST=Lyon/L=Villeurbanne/CN=Nicolas/emailAddress=nicolas.jaros@proton.me"


CMD	["-g", "daemon off;"]

ENTRYPOINT	["nginx"]