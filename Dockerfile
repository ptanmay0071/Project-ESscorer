FROM ubuntu:latest
LABEL "Auther"="Tanmay"
LABEL "Project"="ESscorer"
RUN apt update
RUN apt install apache2 git -y
#ENV DEBIAN_FRONTEND=noninteractive
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
WORKDIR /var/www/html
VOLUME /var/log/apache2
ADD ESscorer /var/www/html
