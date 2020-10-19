#!/bin/bash

#pre-req
##docker shoud be installed

echo "
FROM nginx:alpine
COPY . /usr/share/nginx/html
" > Dockerfile

docker build -t web:v1 .
docker run -d -p 80:80 web:v1
