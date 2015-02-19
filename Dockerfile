FROM ubuntu
RUN apt-get update && \
    apt-get install -y curl && \
    apt-get install -y wget && \
    curl install.meteor.com | /bin/sh
