FROM ubuntu:18.04

# Always use apt-get update and install in same line so that any change in install will requery latest updates

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

# Create sample hello world index.html to replace default apache file.
RUN echo "hello world!" > index.html

# To run apache in foreground
ENTRYPOINT ["/usr/sbin/apache2", "-DFOREGROUND"]

EXPOSE 80


