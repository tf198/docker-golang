FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

WORKDIR /srv/app
CMD ["bash"]

ENV GOPATH /srv/app
ENV GO15VENDOREXPERIMENT 1

ENV PATH /srv/app/bin:/usr/local/go/bin:${PATH}

ENV GOLANG_VERSION 1.7.4
ENV GOLANG_TARBALL https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz

ADD rootfs /

RUN apk update && \
  apk add \
    build-base \
    git \
    mercurial \
    bzr \
    go && \
  export \
    GOROOT_BOOTSTRAP="$(go env GOROOT)" && \
  curl -sLo - \
    ${GOLANG_TARBALL} | tar -xzf - -C /usr/local && \
  cd \
    /usr/local/go/src && \
  patch -p2 -i \
    /tmp/no-pic.patch && \
  bash \
    make.bash && \
  apk del \
    go && \
  rm -rf \
    /var/cache/apk/*
