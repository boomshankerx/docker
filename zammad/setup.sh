#!/usr/bin/env zsh
[[ -d /docker/zammad ]] && sudo rm -fr /docker/zammad
sudo mkdir /docker/zammad

cd /docker/zammad
sudo mkdir elasticsearch-data
sudo mkdir postgresql-data
sudo mkdir redis-data
sudo mkdir zammad-backup
sudo mkdir zammad-storage

