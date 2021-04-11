FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get upgrade && apt-get update
RUN apt-get install -y php libapache2-mod-php
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y php 
RUN apt-get install -y php-dev 
RUN apt-get install -y php-mysql 
RUN apt-get install -y libapache2-mod-php 
RUN apt-get install -y php-curl 
RUN apt-get install -y php-json 
RUN apt-get install -y php-common 
RUN apt-get install -y php-mbstring 
RUN apt-get install -y composer
RUN apt-get install -y software-properties-common
RUN apt-get install -y apache2
COPY ./index.php /var/www/html
COPY ./apache2.conf /etc/apache2/apache2.conf 
RUN apt-get install -y  mysql-server
EXPOSE 80
EXPOSE 443
