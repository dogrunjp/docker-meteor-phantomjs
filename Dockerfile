FROM ubuntu
RUN apt-get update && \
    apt-get install -y curl && \
    apt-get install wget && \
    apt-get install build-essential chrpath libssl-dev livxft-dev && \
    apt-get install libfreetype6 libfreetype6-dev && \
    apt-get install libfontconfig1 libfontconfig1-dev && \
    curl install.meteor.com | /bin/sh
