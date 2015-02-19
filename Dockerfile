FROM ubuntu
RUN apt-get update
RUN apt-get install -y \
    curl \
    wget

RUN apt-get install -y build-essential chrpath libssl-dev libxft-dev

RUN curl install.meteor.com | /bin/sh
