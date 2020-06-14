FROM debian:stable-20200607-slim

MAINTAINER "Marc Smith" <marc_smith@gmx.com>

ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/root
RUN apt-get update
RUN apt-get install -y openssh-server
ADD start.sh /start.sh
RUN chmod +x /start.sh
COPY etc/ssh/sshd_config /etc/ssh/sshd_config
RUN adduser --disabled-password --gecos "" tun
RUN echo "root:root"|chpasswd
RUN echo "tun:mypassword"|chpasswd
RUN mkdir /run/sshd
RUN echo "" > /etc/motd
CMD ["/start.sh"]
EXPOSE 22
