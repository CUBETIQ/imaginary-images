#!/bin/bash -e

docker build . -t cubetiq/imaginary:latest
docker tag cubetiq/imaginary:latest registry.ctdn.net/imaginary:latest

docker push cubetiq/imaginary:latest
docker push registry.ctdn.net/imaginary:latest