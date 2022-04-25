
  FROM ubuntu:18.04 

  MAINTAINER Wimes <yms04089@kookmin.ac.kr> 

  RUN \
      apt-get update && \
      apt-get install -y apache2

  EXPOSE 80 

  CMD ["apachectl", "-D", "FOREGROUND"]
