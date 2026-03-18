FROM ubuntu:latest

LABEL author="Mikołaj Nadra s101632@pollub.edu.pl"

RUN apt-get update && apt-get upgrade -y; \
apt -y install apache2; \
rm -rf /var/lib/apt/lists/*

COPY index.html /var/www/html/index.html

EXPOSE 80

CMD ["apache2ctl", "-DFOREGROUND"]