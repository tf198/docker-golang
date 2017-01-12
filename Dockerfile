FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

WORKDIR /srv/app
CMD ["bash"]

ENV GOPATH /srv/app
ENV GO15VENDOREXPERIMENT 1

ENV PATH /srv/app/bin:${PATH}

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

ARG VERSION
ARG BUILD_DATE
ARG VCS_REF

LABEL org.label-schema.version=$VERSION
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.vcs-ref=$VCS_REF
LABEL org.label-schema.vcs-url="https://github.com/dockhippie/golang.git"
LABEL org.label-schema.name="Golang"
LABEL org.label-schema.vendor="Thomas Boerger"
LABEL org.label-schema.schema-version="1.0"
