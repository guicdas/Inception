all: build

build:	c
	docker compose up --build

clean: c
	docker compose down

fclean:	clean
	docker image rm nginx
	docker container prune

c:
	clear