FROM node:lts-alpine3.16

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true

WORKDIR /home/node/app
COPY ./app .

RUN apk add chromium && \
    yarn install

EXPOSE 21465
