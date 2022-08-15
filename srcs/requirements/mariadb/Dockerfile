# Source :
#		-	Open discuss in slack #42lyon_global_general 10/08/2022 10h26

FROM debian:buster

RUN apt-get update && \
	apt-get install -y mariadb-server mariadb-client && \
	rm -rf /var/lib/apt/lists/*

CMD ["mysqld_safe"]