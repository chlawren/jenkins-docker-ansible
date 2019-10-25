FROM alpine:3.10

RUN apk - no-cache update \
  && apk add g++ gcc libgcc libstdc++ linux-headers autoconf automake make \
  && rm -rf /var/cache/apk/*

WORKDIR /usr/src/app
