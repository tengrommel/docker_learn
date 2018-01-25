FROM ubuntu:latest

MAINTAINER teng.com

RUN apt-get -yqq update && apt-get install -yqq apache2 && apt-get clean

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]