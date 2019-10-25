#! /usr/bin/env sh
set -e

# Stop & remove container, if running
container_name="demo-nginx"
if [ "$(docker ps -a | grep $container_name)" ]; then
    docker container stop "$container_name" >/dev/null
    docker container rm "$container_name" >/dev/null
fi

docker container run \
    -d \
    -p 80:80 \
    -p 443:443 \
    --name "$container_name" \
    "$1" 

printf "\nStarted container with name: '$container_name'\n"
exit 0
