FROM node:14.17-alpine3.13

WORKDIR /home/node/app
COPY ./app .

RUN apk add chromium && \
    yarn install

EXPOSE 21465
