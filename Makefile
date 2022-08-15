#Idea : build the db shared-volume 

all:		build-volumes up

build-volumes:
			docker volume create db_volume

up:			
			docker-compose -f ./srcs/docker-compose.yml up

down:		
			docker-compose -f ./srcs/docker-compose.yml down

clean:		down

# destroy container + destroy wordpress database
vclean: 	clean
			docker volume rm db_volume

# destroy container + image
fclean:		clean
			docker rmi db_image
			docker rmi wordpress_image

# destroy all
fvclean:	clean
			docker rmi db_image
			docker rmi wordpress_image
			docker volume rm db_volume
