#!/usr/bin/env bash

BASE=/docker
DEST=/backup
DATE=$(date +%F-%H%M%S)

echo $DATE

mountpoint -q /backup
if (( $? )) ; then
    echo "/backup isn't mounted"
    mount -t nfs nas.techg:/mnt/tank/data/backup/_docker /backup
fi
cd $BASE
zip -rv $DEST/bind9-$DATE.zip bind9/config bind9/records bind9/cache
zip -rv $DEST/headscale-$DATE.zip headscale/config headscale/data
zip -rv $DEST/unifi-$DATE.zip unifi/config unifi/db
zip -rv $DEST/portainer-$DATE.zip portainer/data
zip -rv $DEST/duplicati-$DATE.zip duplicati

find /backup -mtime +30 -print -exec rm {} \;
