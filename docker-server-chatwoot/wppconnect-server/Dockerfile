FROM node:lts-alpine3.16 as builder

ENV PORT=21465

RUN apk add wget && \
    apk add --no-cache git

WORKDIR /home/node
RUN git clone https://github.com/wppconnect-team/wppconnect-server.git /home/node/app 

WORKDIR /home/node/app

COPY ./config.json /home/node/app/src

RUN yarn install
RUN yarn build

FROM node:lts-alpine3.16
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
WORKDIR /home/node/app
RUN apk add chromium
COPY --from=builder /home/node/app/ .
EXPOSE 21465
