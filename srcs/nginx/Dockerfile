ARG VERSION=latest
FROM debian:${VERSION}

RUN apt -y update && apt -y upgrade && apt install -y nginx

CMD [ "nginx", "-g", "daemon off" ]