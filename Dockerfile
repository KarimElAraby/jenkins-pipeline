FROM nginx:latest

COPY hello.html /usr/share/nginx/html/index.html

RUN apt update -y
RUN apt install vim -y
