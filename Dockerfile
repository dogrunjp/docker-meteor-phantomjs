FROM ubuntu
RUN apt-get update
RUN apt-get install -y \
    curl \
    wget

RUN curl install.meteor.com | /bin/sh
