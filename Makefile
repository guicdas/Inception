all:

build:
	clear
	docker compose up --build

clean:
	docker compose down