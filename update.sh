#!/usr/bin/env bash
while read -r dir; do
    echo $dir
    cd $dir
    docker compose pull
    docker compose up -d
    cd -
done < updatelist.txt
docker image prune

#for dir in */; do
    #echo $dir
    #cd $dir
    #docker compose pull
    #docker compose up -d
    #cd -
#done
