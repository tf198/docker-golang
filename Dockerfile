FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

VOLUME ["/srv/app"]

WORKDIR /srv/app
CMD ["bash"]

ENV GOPATH /srv/app
ENV GO15VENDOREXPERIMENT 1
ENV PATH /app/bin:${PATH}

RUN apk update && \
  apk add \
    build-base \
    git \
    mercurial \
    bzr \
    go \
    go-tools && \
  rm -rf \
    /var/cache/apk/*

ADD rootfs /
