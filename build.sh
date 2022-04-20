#!/bin/bash

docker build -t thinkr/docker-flems:latest .

curl https://raw.githubusercontent.com/porsager/flems/master/package.json > pack.json

docker tag thinkr/docker-flems:latest thinkr/docker-flems:$(cat pack.json | grep "version" | sed 's/ *"version": "\(.*\)",/\1/g')

docker push thinkr/docker-flems:latest
docker push thinkr/docker-flems:$(cat pack.json | grep "version" | sed 's/ *"version": "\(.*\)",/\1/g')

rm pack.json