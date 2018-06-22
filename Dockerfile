FROM php:7.2-apache
MAINTAINER Cameron McKay <cameron@process.st>

COPY src/ /var/www/html/

EXPOSE 80
EXPOSE 443

CMD ["apache2-foreground"]
