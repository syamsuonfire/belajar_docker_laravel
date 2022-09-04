FROM php:7.4-fpm

# Install dependencies
# RUN apt-get update && apt-get install -y libpq-dev
RUN pecl install xdebug
RUN docker-php-ext-enable xdebug

# Configure the extension
# RUN docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql

# Install PHP extensions
RUN docker-php-ext-install pdo pdo_mysql 
# RUN docker-php-ext-install pdo pdo_pgsql
RUN docker-php-ext-install opcache