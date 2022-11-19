FROM php:7.4-apache

WORKDIR /var/www/html
COPY index.php /var/www/html
COPY conexao.php /var/www/html

RUN apt-get update && apt-get- install -y \
libfreetype-6dev \
libjpeg62-turbo-dev \
libpng-dev \
&& docker-php-ext-install -j(nproc) gd \
&& docker-php-ext-install pdo_mysql \
&& docker-php-ext-install mysqli


EXPOSE 80