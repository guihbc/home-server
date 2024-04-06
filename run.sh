#!/bin/bash

if docker network ls | grep 'traefik_server_apps'; then
    echo 'Network found'
else
    echo 'Network not found creating...'
    docker network create traefik_server_apps
fi

docker compose up -d traefik
