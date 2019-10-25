FROM alpdemo:base AS builder

FROM node:10-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN apk --no-cache --virtual build-dependencies add \
    python \
    make \
    g++ \
    && npm install \
    && apk del build-dependencies

COPY . .

EXPOSE 3000

USER node

CMD [ "node", "server.js" ]
