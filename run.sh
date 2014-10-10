#!/bin/sh

set -ue

name=$(cat NAME)
version=$(cat VERSION)

docker run -d \
    --name cifs \
    --restart="always" \
    -p 139:139 -p 445:445 \
    -v /mnt/media:/mnt/media \
    --volumes-from torrent \
    $name:$version \
    \
    playtime optitron \
    /mnt/media:share:r \
    /torrent/download:download:r
