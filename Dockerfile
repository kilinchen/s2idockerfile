FROM docker.io/library/httpd:latest

ENV PORT 81
ADD index.html /usr/local/apache2/htdocs
EXPOSE ${PORT}
WORKDIR /usr/local/apache2
ENTRYPOINT ["/usr/local/bin/httpd-foreground" ]
