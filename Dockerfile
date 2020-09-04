FROM docker.io/library/centos

ENV PORT 8080
RUN yum install -y httpd;sed -ri -e "/^Listen 80/c\Listen ${PORT}" /etc/httpd/conf/httpd.conf
ADD index.html /var/www/html
EXPOSE ${PORT}
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
