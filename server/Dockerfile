FROM crystallang/crystal:0.27.2

WORKDIR /data

RUN apt-get -q update && \
    apt-get -qy install build-essential libgc-dev libssl-dev libxml2-dev libyaml-dev libevent-dev && \
    apt-get -y install tzdata wget && \
    apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

EXPOSE 5020

CMD shards && crystal src/server.cr

