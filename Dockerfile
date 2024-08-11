FROM centos:latest
MAINTAINER saladipavankalyan10@gmail.com
RUN yum install -y httpd \
 zip \
 unzip
ADD photogenic.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUn rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22
