#!/usr/bin/env zsh

docker compose down
sudo rm -fr ~/unifi
docker compose up -d
docker compose logs -f
