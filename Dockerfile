FROM node:latest
MAINTAINER Joji Augustine "jojimail@gmail.com"

WORKDIR /echoserver

COPY package.json /echoserver
RUN npm install
EXPOSE 6001

CMD ["/echoserver/node_modules/.bin/laravel-echo-server", "start"]