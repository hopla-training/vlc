build:
	docker build -t vlc .
run:
	docker run -ti -v $(PWD):/tmp -v /dev/snd:/dev/snd --privileged -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$$DISPLAY --name vlc --rm -v /etc/machine-id:/etc/machine-id vlc
