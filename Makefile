VERSION ?= develop
APP ?= aerospike-alpine

build:
	docker build --rm . -t $(APP):$(VERSION)
	docker tag $(APP):$(VERSION) aleksnv/$(APP):$(VERSION)

release:
	docker push aleksnv/$(APP):$(VERSION)

