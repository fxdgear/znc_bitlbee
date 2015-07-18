FROM alpine
MAINTAINER Nick Lang <nick.lang@docker.com>

RUN apk add --update znc-modperl znc-modtcl && rm -rf /var/cache/apk/*
VOLUME ["/data/"] 
USER znc
ENTRYPOINT ["znc", "--datadir=/data/"]
CMD ["--help"]
