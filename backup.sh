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
for dir in */; do
    dir=${dir%/}
    echo $dir
    zip -rv $DEST/$dir-$DATE.zip $dir
done

find /backup -mtime +30 -print -exec rm {} \;
