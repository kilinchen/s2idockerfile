FROM registry.ocp.taipei.com:8443/myimage/httpd

ADD index.html /var/www/html
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
