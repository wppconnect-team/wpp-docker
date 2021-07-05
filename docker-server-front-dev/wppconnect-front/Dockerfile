FROM node:14.17-alpine3.13

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true

WORKDIR /home/node/app
COPY ./app .

RUN apk add chromium && \
    yarn install

EXPOSE 3000