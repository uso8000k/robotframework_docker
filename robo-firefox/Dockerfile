# Base container
FROM alpine:latest
MAINTAINER https://github.com/uso8000k/

# Environment
ENV TIMEZONE Asia/Tokyo

# Install required packages 
RUN apk update
RUN apk add bash curl wget git

## for robotframework&selenium
RUN apk add py-pip
RUN pip install pip --upgrade
RUN pip install robotframework==3.0.2
RUN pip install robotframework-selenium2library==1.8.0
RUN pip install selenium==2.53.6

## for fb for browser
RUN apk add xvfb dbus ttf-freefont
RUN apk add firefox-esr
#RUN cd /usr/bin/ && wget https://github.com/mozilla/geckodriver/releases/download/v0.17.0/geckodriver-v0.17.0-linux64.tar.gz -O - | tar zx

# Start configuration to run
ADD scripts/run.sh /opt/run.sh

## Clean package caches
RUN rm -rf /var/cache/apk/*

# Setup Cacti
ENTRYPOINT ["/opt/run.sh"]
