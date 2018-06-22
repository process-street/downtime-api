FROM php:7.2-apache
MAINTAINER Cameron McKay <cameron@process.st>

RUN a2enmod rewrite

COPY src/ /var/www/html/

EXPOSE 80
EXPOSE 443

CMD ["apache2-foreground"]
