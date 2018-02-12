# firefox
docker run -ti --rm --name firefox --net host -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix:0.0 -v ~/Downloads/:/home/ff/Downloads -v ~/.mozilla:/home/ff/.mozilla -e PULSE_SERVER=<hostipaddress>:4713 -u 1000 francois/firefox:latest
