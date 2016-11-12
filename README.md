# vlc
Simple VLC Demo


First Volume will add your localdir to /tmp for adding files ;)

docker run -ti -v $(PWD):/tmp -v /dev/snd:/dev/snd --privileged \
-v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY \
--name vlc --rm -v /etc/machine-id:/etc/machine-id vlc
