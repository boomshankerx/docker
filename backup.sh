#!/usr/bin/env bash

DEST=/backup
DATE=$(date +%F-%H%M%S)

echo $DATE

mountpoint -q /backup
if (( $? )) ; then
    echo "/backup isn't mounted"
    mount -t nfs nas.techg:/mnt/tank/data/backup/_docker /backup
fi
zip -rv $DEST/bind9-$DATE.zip bind9/config bind9/records bind9/cache
zip -rv $DEST/headscale-$DATE.zip headscale/config headscale/data
zip -rv $DEST/unifi-$DATE.zip unifi/config unifi/data

find /backup -mtime +30 -print -exec rm {} \;
