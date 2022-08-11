#Idea : build the db shared-volume 

all:		build-volumes up

build-volumes:
			docker volume create db_volume

up:			
			docker-compose -f ./srcs/docker-compose.yml up

down:		
			docker-compose -f ./srcs/docker-compose.yml down

clean:		down

vclean: 	clean
			docker volume rm db_volume

fclean:		clean
			docker rm db
			docker rmi db_image

fvclean:	clean
			docker rm db
			docker rmi db_image
			docker volume rm db_volume
