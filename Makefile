DOCK_COMPOSE	= ./srcs/docker-compose.yml

all: build

build:	clr
	docker compose -f ${DOCK_COMPOSE} up --build --no-cache

clean: clr
	docker compose -f ${DOCK_COMPOSE} down

fclean:	clean
	docker system prune --all --force
	docker container prune --force
	docker builder prune --all --force
	docker volume prune --all --force
	docker image prune --all --force
	#rm -rf /home//data/wp-files/ /home//data/wp-db/ /home//data/website-files/

maria: clr
	docker compose --env-file ./srcs/.env -f ${DOCK_COMPOSE} up -d --build mariadb
	docker run -it mariadb:10.5

clr:
	clear