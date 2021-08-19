FROM openresty/openresty:1.19.9.1-0-buster-fat

RUN rm /etc/nginx/conf.d/default.conf && \ 
    rm /etc/openresty/nginx.conf

COPY ./nginx.conf /etc/openresty
#COPY ./conf.d/nginx.conf /etc/nginx/conf.d