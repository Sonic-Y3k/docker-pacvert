# Builds a docker gui image
FROM phusion/baseimage

MAINTAINER Sonic-Y3k

#########################################
##        ENVIRONMENTAL CONFIG         ##
#########################################

# Set environment variables

# App Name
ENV APP_NAME="pacvert"

ADD ./setup.sh /tmp/setup.sh
ADD ./pacvert.sh /etc/my_init.d/pacvert.sh
RUN /bin/chmod +x /etc/my_init.d/pacvert.sh
RUN /bin/sh /tmp/setup.sh

RUN mkdir -p /config
RUN git clone https://github.com/Sonic-Y3k/pacvert.git /config/pacvert/

#########################################
##         EXPORTS AND VOLUMES         ##
#########################################

# Place whater volumes and ports you want exposed here:
VOLUME ["/config"]
EXPOSE 8181

CMD ["/sbin/my_init"]
