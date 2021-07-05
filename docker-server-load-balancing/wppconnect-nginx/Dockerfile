FROM nginx:1.15.0-alpine

RUN rm /etc/nginx/conf.d/default.conf && \ 
    rm /etc/nginx/nginx.conf

COPY ./nginx.conf /etc/nginx/
COPY ./conf.d/nginx.conf /etc/nginx/conf.d