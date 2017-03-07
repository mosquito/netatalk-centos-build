build: image rpms-dir
	docker run --rm -t -v $(shell pwd)/RPMS:/root/rpmbuild/RPMS netatalk

rpms-dir:
	mkdir -p RPMS

image:
	docker build -t netatalk .
