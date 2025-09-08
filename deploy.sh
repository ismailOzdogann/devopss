#!/bin/sh
set -e

IMAGE=$1
CONTAINER=myapp

docker pull $IMAGE
docker stop $CONTAINER || true
docker rm $CONTAINER || true
docker run -d --restart unless-stopped --name $CONTAINER -p 80:3000 $IMAGE
