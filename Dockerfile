FROM httpd:latest
RUN apt-get update
COPY  ./index.html /usr/local/apache2/htdocs
EXPOSE 80
ENTRYPOINT ["/usr/local/apache2/bin/httpd", "-D", "FOREGROUND"] 
