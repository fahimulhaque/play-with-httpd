FROM httpd
RUN apt update && apt upgrade && apt install curl
COPY ./my-httpd.conf /usr/local/apache2/conf/httpd.conf
WORKDIR /usr/local/apache2/htdocs/
COPY build .