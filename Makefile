NAME ?= thomasr/ktress
TAG ?= v1
IMAGE = $(NAME):$(TAG)

.PHONY: build
build:
	docker build -t $(IMAGE) .

.PHONY: push
push: build
	docker push $(IMAGE)
