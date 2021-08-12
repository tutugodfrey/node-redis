FROM centos/systemd

MAINTAINER "Godfrey Tutu" <godfrey_tutu@yahoo.com>
LABEL description="Centos Image with Redis and node.js installed"

WORKDIR /
COPY install-redis-with-tls.sh systemctl.py /

RUN . ./install-redis-with-tls.sh
RUN yum install -y gcc-c++ make
RUN ls /
RUN ls /usr/bin/systemctl*
RUN curl -sL https://rpm.nodesource.com/setup_15.x | sudo -E bash -
RUN yum install nodejs -y

CMD [/bin/bash]
