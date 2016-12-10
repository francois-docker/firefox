# Base docker image
FROM debian:jessie
MAINTAINER François Billant <fbillant@gmail.com>

COPY firefox-50.0.2.tar.bz2 /usr/src/firefox-50.0.2.tar.bz2

RUN sed -i.bak 's/jessie main/jessie main contrib non-free/g' /etc/apt/sources.list && \

apt-get update && apt-get install -y \
bzip2 \
libfreetype6-dev \
libfontconfig1 \
libxrender1 \
libxdamage1 \
libxcomposite1 \
libasound2-dev \
libdbus-glib-1-2 \
libxt6 \
libgtk-3-0 \
flashplugin-nonfree

RUN cd /usr/src && \
tar -xvf /usr/src/firefox-50.0.2.tar.bz2 && \
mv /usr/src/firefox /root

# Autorun firefox
CMD ["/root/firefox/firefox"]
