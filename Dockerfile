FROM php:5.6-apache
MAINTAINER jonsnowd3n <jonsnowd3n@gmail.com>

RUN a2enmod rewrite
RUN docker-php-ext-install pdo pdo_mysql

# Define default command.
#CMD ["/bin/bash"]
