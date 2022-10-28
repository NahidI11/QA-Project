#!/bin/bash

echo "Deploy stage"

scp docker-compose.yaml nahid@jenkins2710:/home/jenkins/docker-compose.yaml
ssh nahid@20.68.233.210 \
    DOCKER_HUB_CREDS_USR=$DOCKER_HUB_CREDS_USR \
    DATABASE_URI=$DATABASE_URI \
    docker stack deploy --compose-file docker-compose.yaml notes-app
