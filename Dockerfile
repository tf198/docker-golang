FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

ENV GOPATH /app
ENV GO15VENDOREXPERIMENT 1

RUN apk update && \
  apk add \
    build-base \
    git \
    mercurial \
    go@community && \
  rm -rf \
    /var/cache/apk/*

ADD rootfs /

WORKDIR /app
CMD ["bash"]
