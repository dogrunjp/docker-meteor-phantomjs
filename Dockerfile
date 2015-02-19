FROM ubuntu
RUN apt-get update && \
    apt-get install -y curl && \
    apt-get install wget && \
    apt-get install build-essential chrpath libssl-dev livxft-dev && \
    apt-get install libfreetype6 libfreetype6-dev && \
    apt-get install libfontconfig1 libfontconfig1-dev && \
    curl install.meteor.com | /bin/sh

WORKDIR ~/
RUN export PHANTOM_JS="phantomjs-1.9.8-linux-x86_64" && \
    wget https://bitbucket.org/ariya/phantomjs/downloads/$PHANTOM_JS.tar.bz2 && \
    mv $PHANTOM_JS.tar.bz2 /usr/local/bin
    cd /usr/local/bin
    tar xvjf $PHANTOM_JS.tar.bz2
    ln -sf /usr/local/bin/$PHANTOM_JS/bin/phantomjs  /usr/local/bin/phantomjs 

WORKDIR /
RUN  meteor create hello

WORKDIR /hello
RUN meteor add meteorhacks:npm
    meteor add d3
    meteor remove autopublish
 
