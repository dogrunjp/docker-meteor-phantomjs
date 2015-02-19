FROM ubuntu
RUN apt-get update
RUN apt-get install -y \
    curl \
    wget

RUN apt-get install -y build-essential chrpath libssl-dev libxft-dev
RUN apt-get install -y libfreetype6 libfreetype6-dev

RUN curl install.meteor.com | /bin/sh
