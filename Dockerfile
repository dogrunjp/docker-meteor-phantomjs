FROM ubuntu
RUN apt-get update
RUN apt-get install -y \
    curl \
    wget \
    build-essential \
    chrpath \
    libssl-dev \
    livxft-dev

RUN curl install.meteor.com | /bin/sh
