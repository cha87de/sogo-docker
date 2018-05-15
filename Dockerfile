# select operating system
FROM debian:8

# install operating system packages 
RUN apt-get update -y && apt-get install make git gettext -y && \
    apt-key adv --keyserver keys.gnupg.net --recv-key 0x810273C4 && \
    apt-get update && \
    apt-get install apt-transport-https -y && \
    echo "deb http://packages.inverse.ca/SOGo/nightly/4/debian/ jessie jessie" >> /etc/apt/sources.list && \
    apt-get update && \
    apt-get install sogo sope4.9-gdl1-postgresql sope4.9-gdl1-mysql mysql-client nginx -y

# use bpkg to handle complex bash entrypoints
RUN curl -Lo- "https://raw.githubusercontent.com/bpkg/bpkg/master/setup.sh" | bash
RUN bpkg install cha87de/bashutil -g

# add config and init files 
ADD config /opt/docker-config
ADD init /opt/docker-init

# start from init folder
WORKDIR /opt/docker-init
ENTRYPOINT ["./entrypoint"]