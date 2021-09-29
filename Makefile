DOCKER_IMAGE=signal

include Makefile.docker

PACKAGE_VERSION=0.1

include Makefile.package

.PHONY: check-version
check-version:
	docker run --rm --entrypoint dpkg $(DOCKER_NAMESPACE)/$(DOCKER_IMAGE):$(VERSION) -l|grep signal-desktop|awk '{print $$3}'
