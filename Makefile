DOCKER_IMAGE_NAME = cubetiq/imaginary
DOCKER_IMAGE_NAME_2 = cubetiq/imaginary2

DOCKER_IMAGE_SIZE = $(shell docker images --format "{{.Repository}} {{.Size}}" | grep $(DOCKER_IMAGE_NAME) | cut -d\   -f2)
DOCKER_IMAGE_SIZE_2 = $(shell docker images --format "{{.Repository}} {{.Size}}" | grep $(DOCKER_IMAGE_NAME_2) | cut -d\   -f2)

build:
	./build.sh
	@echo "Size of the image: ${DOCKER_IMAGE_NAME} = ${DOCKER_IMAGE_SIZE}"

	./build-custom.sh
	@echo "Size of the image: ${DOCKER_IMAGE_NAME_2} = ${DOCKER_IMAGE_SIZE_2}"

.PHONY: build