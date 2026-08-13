FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    apache2 php php-pear php-dev php-tidy php-bcmath php-bz2 php-curl \
    php-gd php-gmp php-ldap php-mbstring php-soap php-sqlite3 php-imap \
    php-mysql php-zip libapache2-mod-php7.4 unzip wget curl vim \
    libaio1 libfreetype6-dev libmemcached-dev libssh2-1-dev libmcrypt-dev \
    pkg-config zlib1g-dev imagemagick libmagickwand-dev openssl \
    && rm -rf /var/lib/apt/lists/*

# Enable Apache modules
RUN a2enmod ssl headers rewrite expires

# Copy Apache VirtualHost config
COPY apache/orangehrm.conf /etc/apache2/sites-available/orangehrm.conf
RUN a2ensite orangehrm.conf && a2dissite 000-default.conf

EXPOSE 80 443
CMD ["apache2ctl", "-D", "FOREGROUND"]
