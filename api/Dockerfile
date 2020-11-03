
FROM php:7.4-fpm-alpine3.12

RUN apk --update --no-cache add git

# RUN set -xe \
#     && apk add --update \
#         icu \
#     && apk add --no-cache --virtual .php-deps \
#         make \
#     && apk add --no-cache --virtual .build-deps \
#         $PHPIZE_DEPS \
#         zlib-dev \
#         icu-dev \
#         g++ \
#     && docker-php-ext-configure intl \
#     && docker-php-ext-install intl \
#     && docker-php-ext-enable intl \
#     && { find /usr/local/lib -type f -print0 | xargs -0r strip --strip-all -p 2>/dev/null || true; } \
#     && apk del .build-deps \
#     && rm -rf /tmp/* /usr/local/lib/php/doc/* /var/cache/apk/*

RUN docker-php-ext-install pdo_mysql

# ADD ./config/www.conf /usr/local/etc/php-fpm.d/www.conf
# # ADD ./config/php-fpm.conf /usr/local/etc/php-fpm.conf
# ADD ./config/php.ini /usr/local/etc/php/php.ini

WORKDIR /var/www

COPY --from=composer /usr/bin/composer /usr/bin/composer

# CMD php-fpm
CMD composer install ;  php-fpm
EXPOSE 9000