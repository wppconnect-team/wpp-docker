FROM node:14.17-alpine3.13 as builder

ENV PORT=21465

RUN apk add wget && \
    apk add --no-cache git

WORKDIR /home/node
RUN git clone https://github.com/wppconnect-team/wppconnect-server.git /home/node/app 

WORKDIR /home/node/app
COPY ./config.json /home/node/app/src
RUN yarn install

FROM node:14.17-alpine3.13
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
WORKDIR /home/node/app
RUN apk add chromium
RUN apk update && apk add wget

ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz

COPY --from=builder /home/node/app/ .
EXPOSE 21465