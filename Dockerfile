FROM php:5.6-apache
MAINTAINER jonsnowd3n <jonsnowd3n@gmail.com>

RUN a2enmod rewrite
RUN docker-php-ext-install pdo pdo_mysql mysqli
RUN apt-get update && apt-get install -y hugo

COPY run-hugo.sh /bin/run-hugo.sh


# Define default command.
#CMD ["/bin/bash"]
