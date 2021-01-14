.PHONY: build version

include src/version.py

IMAGE	:= flask-uwsgi-docker

all: build

build:
	@docker build -t $(IMAGE):$(VERSION) .

dev:
	@docker run -p 5000:5000 -it $(IMAGE):$(VERSION)
