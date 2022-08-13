#	sources:
#			https://www.youtube.com/watch?v=QLzwJpSkm8w&list=PLn6POgpklwWq0iz59-px2z-qjDdZKEvWd&index=9&ab_channel=xavki

FROM	debian:buster

RUN		apt-get update && \
		apt-get install -y nginx && \
		rm -rf /var/lib/apt/lists/*

VOLUME	/var/www/html/

ENTRYPOINT	["nginx", "-g", "daemon off;"]