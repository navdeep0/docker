FROM centos:7
MAINTAINER navdeep@gmail.com
RUN yum install -y httpd \
 zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page278/faster.zip /var/www/html
WORKDIR /var/www/html
RUN unzip faster.zip
CMD ["/usr/sbin/httpd","D","FOREGROUND"]
EXPOSE 80
