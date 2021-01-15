FROM centos
RUN dnf install php-fpm -y
RUN mkdir -p /run/php-fpm/
COPY www.conf /etc/php-fpm.d/www.conf
CMD php-fpm -F
