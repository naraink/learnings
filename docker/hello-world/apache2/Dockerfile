FROM ubuntu:18.04
RUN apt-get update \
&& apt-get install apache2 -y

# Manually set up the apache environment variables

ENV APACHE_RUN_DIR /var/www/html

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid

WORKDIR /var/www/html
RUN echo "hello world!" > index.html

ENTRYPOINT ["/usr/sbin/apache2", "-DFOREGROUND"]

EXPOSE 80


