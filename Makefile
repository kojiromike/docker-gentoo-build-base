all: update
	docker build -t kojiromike/docker-gentoo-build-base context

update:
	docker pull gentoo/portage
	docker pull gentoo/stage3-amd64-hardened-nomultilib

clean:
	docker rmi kojiromike/docker-gentoo-build-base
