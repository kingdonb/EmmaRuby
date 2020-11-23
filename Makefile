.PHONY: build run

IMAGE_BASE := kingdonb/emmaruby

build:
	docker build -t $(IMAGE_BASE):canary .

run:
	docker run --name=emmaruby --rm -v `pwd`:/home/rvm/app/ -it $(IMAGE_BASE):canary bash --login
