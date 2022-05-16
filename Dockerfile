FROM centos:7
MAINTAINER chiranjivbarik03@gmail.com
RUN yum install -y httpd \
#RUN DEBIAN_FRONTEND=noninteractive apt-get install apache2 -y \
    zip \
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page278/zezmon.zip /var/www/html
WORKDIR /var/www/html
RUN unzip zezmon.zip
RUN cp -rvf site/* .
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
