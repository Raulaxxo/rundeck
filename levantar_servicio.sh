#!/bin/bash -e

## parametros
nombre_imagen=`grep container_name: docker-compose.yml`
my_arr=($(echo $nombre_imagen | tr ":" "\n"))
nombre_imagen=${my_arr[1]}

## fin parametros inciales ##

## destruyo container y vuelvo a crear
docker compose down
docker compose up -d
sleep 2

## update tzdata --> timezone
docker exec $nombre_imagen sh -cc " apk add tzdata --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community -u alpine-keys --quiet --allow-untrusted "



