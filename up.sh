#!/bin/sh
set -e
cd "$(dirname "$0")"
git pull

docker-compose -p spaceage pull

LOCALF="docker-compose.$(hostname).yml"
if [ -f "$LOCALF" ]
then
    docker-compose -p spaceage -f docker-compose.yml -f "$LOCALF" up -d --build --remove-orphans
else
    docker-compose -p spaceage up -d --build --remove-orphans
fi
