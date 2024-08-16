#!/usr/bin/env bash

for dir in */; do
    echo $dir
    cd $dir
    docker compose pull
    docker compose up -d
    cd -
done


