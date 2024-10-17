# chnage to your DockerHub username
username = vstirbu
# change to your DockerHub image name
image = q8s-experiment

# no changes needed below this line
kubepath = $(shell readlink -f $(config))

run: 
	docker run -p 8888:8888 \
		-e DOCKER_IMAGE="$(username)/$(image)" \
  		-v $(kubepath):/home/jupyter/.kube/config  \
  		-v .:/workspace \
  		--pull always \
  		ghcr.io/torqs-project/q8s-devenv:main

build:
	docker build -t $(username)/$(image) .
	docker push $(username)/$(image)

PHONY: lab build