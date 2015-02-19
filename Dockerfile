FROM ubuntu
RUN apt-get update && \
    apt-get install -y curl && \
    curl install.meteor.com | /bin/sh

RUN apt-get install -y wget && \
    apt-get install -y build-essential chrpath libssl-dev livxft-dev && \
    apt-get install -y libfreetype6 libfreetype6-dev && \
    apt-get install -y libfontconfig1 libfontconfig1-dev
