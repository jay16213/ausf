AUSF = ausf
DOCKER = docker
DOCKER_IMAGE = 10.10.4.190:5000/jay16213/ausf

VERSION = $(shell git describe --tags)
BUILD_TIME = $(shell date -u +"%Y-%m-%dT%H:%M:%SZ")
COMMIT_HASH = $(shell git log --pretty='%H' -1 | cut -c1-8)
COMMIT_TIME = $(shell git --no-pager log --pretty="%aI" -1)
LDFLAGS = -X github.com/free5gc/version.VERSION=$(VERSION) \
          -X github.com/free5gc/version.BUILD_TIME=$(BUILD_TIME) \
          -X github.com/free5gc/version.COMMIT_HASH=$(COMMIT_HASH) \
          -X github.com/free5gc/version.COMMIT_TIME=$(COMMIT_TIME)

.PHONY: $(AUSF) clean push

.DEFAULT_GOAL: AUSF

all: $(AUSF)

$(AUSF): $(AUSF).go
	CGO_ENABLED=0 go build -ldflags "$(LDFLAGS)" -o $@ $^

$(DOCKER): Dockerfile
	docker build . -t $(DOCKER_IMAGE)

push:
	docker push $(DOCKER_IMAGE)

clean:
	rm $(AUSF)
