FROM alpine:latest

WORKDIR /tmp

RUN apk -U --no-cache add openssl ca-certificates && \
  wget -O /tmp/oauth.tgz https://github.com/bitly/oauth2_proxy/releases/download/v2.2/oauth2_proxy-2.2.0.linux-amd64.go1.8.1.tar.gz && \
  tar zxvf /tmp/oauth.tgz && \
  find . -name oauth2_proxy -exec mv {} /bin/ \; && \
  rm -rf /tmp/*

CMD ["oauth2_proxy"]
