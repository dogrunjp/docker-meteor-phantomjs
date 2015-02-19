FROM ubuntu
RUN apt-get update && \
    apt-get install -y curl && \
    apt-get install -y \
    wget \
    build-essential \
    chrpath \
    libssl-dev \
    livxft-dev

RUN curl install.meteor.com | /bin/sh
