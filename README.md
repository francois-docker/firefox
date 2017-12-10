# firefox
docker run -ti --rm --name firefox --net host -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix:0.0 -v ~/Downloads/:/root/Downloads --privileged -v ~/.mozilla:/root/.mozilla -e PULSE_SERVER=<hostipaddress>:4713 francois/firefox:latest
