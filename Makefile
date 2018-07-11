all:
	docker build -t kojiromike/docker-gentoo-build-base context

clean:
	docker rmi kojiromike/docker-gentoo-build-base
