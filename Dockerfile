FROM php:7.4-apache-bullseye
WORKDIR /var/www/html
COPY . /var/www/html

RUN <<EOF
apt-get update
apt-get install --yes \
wget=1.21-1+deb11u1 \
git=1:2.30.2-1+deb11u2 \
ffmpeg=7:4.3.6-0+deb11u1 \
lsb-release
EOF

RUN <<EOF
docker-php-ext-install bcmath
docker-php-ext-install sockets
EOF

RUN <<EOF
curl --silent --show-error https://getcomposer.org/installer --output /tmp/composer-setup.php
php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer --version=2.6.2
EOF

RUN <<EOF
composer install
EOF