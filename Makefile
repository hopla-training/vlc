build:
	docker build -t vlc .
run:
	#docker run -v $(pwd):/home/vlc/Documents:rw -v /dev/snd:/dev/snd --privileged -v /tmp/.X11-unix:/tmp/.X11-unix -e uid=$(id -u) -e gid=$(id -g) -e DISPLAY=unix$DISPLAY --name vlc --rm chrisdaish/vlc
	docker run -ti -v $(PWD):/tmp -v /dev/snd:/dev/snd --privileged -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$$DISPLAY --name vlc --rm -v /etc/machine-id:/etc/machine-id vlc
