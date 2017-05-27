
FROM alpine:3.6

MAINTAINER Bodo Schulz <bodo@boone-schulz.de>

ENV \
  ALPINE_MIRROR="mirror1.hs-esslingen.de/pub/Mirrors" \
  ALPINE_VERSION="v3.6" \
  TERM=xterm \
  BUILD_DATE="2017-05-27" \
  VERSION=1.4.36-r0


EXPOSE 11211

LABEL \
  version="1705-04.1" \
  org.label-schema.build-date=${BUILD_DATE} \
  org.label-schema.name="Memcached Docker Image" \
  org.label-schema.description="Inofficial Memcached Docker Image" \
  org.label-schema.url="http://memcached.org" \
  org.label-schema.vcs-url="https://github.com/bodsch/docker-memcached" \
  org.label-schema.vendor="Bodo Schulz" \
  org.label-schema.version=${VERSION} \
  org.label-schema.schema-version="1.0" \
  com.microscaling.docker.dockerfile="/Dockerfile" \
  com.microscaling.license="The Unlicense"

# ---------------------------------------------------------------------------------------

RUN \
  echo "http://${ALPINE_MIRROR}/alpine/${ALPINE_VERSION}/main"       > /etc/apk/repositories && \
  echo "http://${ALPINE_MIRROR}/alpine/${ALPINE_VERSION}/community" >> /etc/apk/repositories && \
  apk --quiet --no-cache update && \
  apk --quiet --no-cache upgrade && \
  apk --quiet --no-cache add \
    memcached && \
  rm -rf \
    /tmp/* \
    /var/cache/apk/*

ENTRYPOINT [ "/usr/bin/memcached" ]

CMD [ "-l", "0.0.0.0", "-m", "8", "-u", "memcached" ]

# EOF
