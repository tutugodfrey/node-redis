#! /bin/bash

function build_image () {
  docker build -t tutug/node-redis-image .;
}

function push_image (){
  docker push tutug/node-redis-image;
}

echo run: build_image to build
echo run: push_image to push to docker hub

