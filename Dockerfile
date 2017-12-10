FROM debian:stretch
MAINTAINER François Billant <fbillant@gmail.com>

RUN sed -i.bak 's/stretch main/stretch main contrib non-free/g' /etc/apt/sources.list && \
apt-get update && \
apt-get install -y \
pulseaudio \
wget \
bzip2 \
libgtk-3-0 \
libdbus-glib-1-2 \
libxt6 \
--no-install-recommends \
&& rm -rf /var/lib/apt/lists/*

RUN cd /usr/local/bin &&\ 
wget --no-check-certificate https://ftp.mozilla.org/pub/firefox/releases/57.0.2/linux-x86_64/en-US/firefox-57.0.2.tar.bz2 && \
tar -xvf firefox-57.0.2.tar.bz2 && \
rm firefox-57.0.2.tar.bz2

ENTRYPOINT ["/usr/local/bin/firefox/firefox"]
