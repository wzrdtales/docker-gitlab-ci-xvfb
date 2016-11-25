FROM wzrdtales/ci-base:latest

MAINTAINER Tobias Gurtzick <magic@wizardtales.com>

USER root

RUN apt-get update && \
      apt-get install -y xvfb fontconfig pcregrep && \
      apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
            
RUN mkdir /tmp/.X11-unix && chmod 1777 /tmp/.X11-unix
ADD xvfb.sh /bin/start_xvfb
RUN chmod +x /bin/start_xvfb

USER cirunner
ENV DISPLAY :99
