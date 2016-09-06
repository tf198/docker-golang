# Golang

[![](https://badge.imagelayers.io/webhippie/golang:latest.svg)](https://imagelayers.io/?images=webhippie/golang:latest 'Get your own badge on imagelayers.io')

These are docker images for [Golang](https://golang.org/) running on an
[Alpine Linux container](https://registry.hub.docker.com/u/webhippie/alpine/).


## Versions

* [latest](https://github.com/dockhippie/golang/tree/master)
  available as ```webhippie/golang:latest``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/golang/)
* [1.7](https://github.com/dockhippie/golang/tree/1.7)
  available as ```webhippie/golang:1.7``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/golang/)
* [1.6](https://github.com/dockhippie/golang/tree/1.6)
  available as ```webhippie/golang:1.6``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/golang/)
* [1.5](https://github.com/dockhippie/golang/tree/1.5)
  available as ```webhippie/golang:1.5``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/golang/)
* [edge](https://github.com/dockhippie/golang/tree/edge)
  available as ```webhippie/golang:edge``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/golang/)


## Volumes

* /srv/app


## Ports

* None


## Available environment variables

**None**


## Inherited environment variables

```bash
ENV LOGSTASH_ENABLED false
ENV LOGSTASH_HOST logstash
ENV LOGSTASH_PORT 5043
ENV LOGSTASH_CA /etc/ssl/logstash/certs/ca.pem # As string or filename
ENV LOGSTASH_CERT /etc/ssl/logstash/certs/cert.pem # As string or filename
ENV LOGSTASH_KEY /etc/ssl/logstash/private/cert.pem # As string or filename
ENV LOGSTASH_TIMEOUT 15
ENV LOGSTASH_OPTS
```


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

```
Copyright (c) 2015-2016 Thomas Boerger <http://www.webhippie.de>
```
