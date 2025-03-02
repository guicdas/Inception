all: build

build:	clr
	docker compose up --build --no-cache

clean: clr
	docker compose -f srcs/docker-compose.yml down

fclean:	clean
	docker system prune --all --force
	docker container prune --force
	docker builder prune --all --force
	docker volume prune --all --force
	docker image prune --all --force
	#rm -rf /home//data/wp-files/ /home//data/wp-db/ /home//data/website-files/

maria: clr
	docker compose -f srcs/docker-compose.yml up -d --build 'mariadb'
	docker run -it mariadb

clr:
	clear