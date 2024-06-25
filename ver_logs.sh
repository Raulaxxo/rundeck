#!/bin/bash

nombre_imagen=`grep container_name: docker-compose.yml`
my_arr=($(echo $nombre_imagen | tr ":" "\n"))
nombre_imagen=${my_arr[1]}

docker logs -f --tail 150 $nombre_imagen
#docker logs -f --since=2m $nombre_imagen
#docker logs -f --since=1h $nombre_imagen

