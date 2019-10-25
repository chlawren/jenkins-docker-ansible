#! /usr/bin/env sh
set -e

# Stop & remove container, if running
container_name="demo-nodejs"
if [ "$(docker ps -a | grep $container_name)" ]; then
    docker container stop "$container_name" >/dev/null
    docker container rm "$container_name" >/dev/null
fi

docker container run \
    -d \
    -p 3000:3000 \
    --name "$container_name" \
    "$1" 

printf "\nStarted container with name: '$container_name'\n"
exit 0
