# select operating system
FROM centos:7

# install operating system packages 
RUN yum install git gettext -y && \
    yum upgrade -y
## add more packages, if necessary

# use bpkg to handle complex bash entrypoints
RUN curl -Lo- "https://raw.githubusercontent.com/bpkg/bpkg/master/setup.sh" | bash
RUN bpkg install cha87de/bashutil -g
## add more bash dependencies, if necessary 

# add config and init files 
ADD config /etc/docker-config
ADD init /opt/docker-init

# start from init folder
WORKDIR /opt/docker-init
ENTRYPOINT ["./entrypoint"]