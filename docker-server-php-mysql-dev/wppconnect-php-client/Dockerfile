FROM php:8.0.10-fpm-alpine3.14 as builder

WORKDIR /var/www

RUN rm -rf /var/www/html
COPY ./app /var/www

RUN apk add --no-cache zip libzip-dev
RUN docker-php-ext-configure zip && \
    docker-php-ext-install zip && \
    docker-php-ext-install mysqli pdo pdo_mysql && \
    docker-php-ext-enable pdo_mysql

RUN chown -R www-data:www-data /var/www

EXPOSE 9000
CMD [ "php-fpm" ]