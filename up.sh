#!/bin/sh
set -e
cd "$(dirname "$0")"
git pull

LOCALF="docker-compose.$(hostname).yml"
if [ ! -f "$LOCALF" ]; then
    LOCALF=/dev/null
fi

run_compose() {
    docker compose -p spaceage -f docker-compose.yml -f "$LOCALF" "$@"
}

run_compose pull "$@"
run_compose build "$@"
run_compose up -d --remove-orphans "$@"
