FROM php:5.6-apache
MAINTAINER jonsnowd3n <jonsnowd3n@gmail.com>

RUN a2enmod rewrite
RUN docker-php-ext-install pdo pdo_mysql mysqli
RUN apt-get update && apt-get install -y hugo

COPY php.ini $PHP_INI_DIR/php.ini

# Define default command.
#CMD ["/bin/bash"]
