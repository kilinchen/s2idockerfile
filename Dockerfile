FROM docker.io/library/httpd:latest

ADD index.html /usr/local/apache2/htdocs
WORKDIR /usr/local/apache2
ENTRYPOINT ["/usr/local/bin/httpd-foreground" ]
