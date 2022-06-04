VERSION?=latest

.PHONY: build
build:
	docker build -t ghcr.io/markuslewis/necesse-server-docker:$(VERSION) .

.PHONY: push
push:
	docker push ghcr.io/markuslewis/necesse-server-docker:$(VERSION)
