FROM centos
RUN yum install httpd mod_ssl php rsyslog wget -y
RUN sed -i 's/proxy:unix:\/run\/php-fpm\/www.sock|fcgi:\/\/localhost/proxy:fcgi:\/\/10.106.67.254:9000/g' /etc/httpd/conf.d/php.conf
COPY rsyslog.conf /etc/rsyslog.conf
COPY localhost.crt /etc/pki/tls/certs/localhost.crt
COPY localhost.key /etc/pki/tls/private/localhost.key
COPY k8s.conf /etc/httpd/conf.d/k8s.conf
HEALTHCHECK CMD wget -q --method=HEAD localhost
CMD /usr/sbin/httpd -DFOREGROUND
