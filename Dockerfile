FROM docker.io/library/centos

ENV PORT 8080
RUN yum install -y httpd
ADD index.html /var/www/html
EXPOSE ${PORT}
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
