FROM centos:latest
MAINTAINER saladipavankalyan10@gmail.com
RUN yum install -y httpd \
 zip \
 unzip
WORKDIR /var/www/html/
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUn rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22
