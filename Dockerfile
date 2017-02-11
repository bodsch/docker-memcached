
FROM alpine:latest

MAINTAINER Bodo Schulz <bodo@boone-schulz.de>

LABEL version="1702-02"

ENV \
  ALPINE_MIRROR="dl-cdn.alpinelinux.org" \
  ALPINE_VERSION="v3.5" \
  TERM=xterm

EXPOSE 11211

# ---------------------------------------------------------------------------------------

RUN \
  echo "http://${ALPINE_MIRROR}/alpine/${ALPINE_VERSION}/main"       > /etc/apk/repositories && \
  echo "http://${ALPINE_MIRROR}/alpine/${ALPINE_VERSION}/community" >> /etc/apk/repositories && \
  apk --no-cache update && \
  apk --no-cache upgrade && \
  apk --no-cache add \
    memcached && \
  apk del --purge \
    bash \
    nano \
    tree \
    ca-certificates \
    curl \
    supervisor && \
  rm -rf \
    /tmp/* \
    /var/cache/apk/*

COPY rootfs/ /

CMD [ "/opt/startup.sh" ]

# EOF
