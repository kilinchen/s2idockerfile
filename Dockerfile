FROM docker.io/library/centos

RUN yum install -y httpd
ADD index.html /var/www/html
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
