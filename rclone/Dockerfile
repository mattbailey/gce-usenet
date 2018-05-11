FROM alpine:edge

ADD https://rclone.org/install.sh /tmp/install.sh

RUN apk add \
  ca-certificates \
  bash \
  unzip \
  man-db \
  curl \
  fuse \
-U -q --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ && \
  mkdir -p /var/cache/man/local && \
  mkdir -p /root/.config/rclone && \
  bash /tmp/install.sh beta && \
  apk del \
  bash \
  unzip \
  man-db \
  curl && \
  rm -rf /var/cache/man /usr/local/share/man /usr/local/share/man

CMD ["rclone"]
