#!/usr/bin/env sh

if [ ! -f /usr/bin/rclone ]; then
  apk add \
    ca-certificates \
    bash \
    unzip \
    man-db \
    curl \
    fuse \
  -U -q --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ && \
    mkdir -p /var/cache/man/local && \
    mkdir -p /root/.config/rclone

  curl https://rclone.org/install.sh | bash -s beta
fi

rclone --tpslimit 1 --drive-chunk-size 128M --ignore-checksum --ignore-times --transfers 1 -v move /drive/Video/TV drive:"/Video/TV/"
