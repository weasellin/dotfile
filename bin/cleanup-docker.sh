#!/bin/bash
# Referenced from
# https://lebkowski.name/docker-volumes/
# https://gist.github.com/mlebkowski/471d2731176fb11e81aa#file-cleanup-docker-sh

# remove exited containers:
docker ps --filter status=dead --filter status=exited -aq | xargs -r docker rm -v

# remove unused images:
docker images --no-trunc | grep '<none>' | awk '{ print $3 }' | xargs -r docker rmi

# remove unused volumes:
docker volume ls -f dangling=true | awk '{ print $2 }' | xargs -r docker volume rm
