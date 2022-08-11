FROM debian:buster

RUN apt-get update && \
	apt-get install -y mariadb-server mariadb-client && \
	rm -rf /var/lib/apt/lists/*

CMD ["mysqld_safe"]