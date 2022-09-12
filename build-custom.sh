#!/bin/bash -e

cd imaginary

docker build . -t cubetiq/imaginary2:latest
docker tag cubetiq/imaginary2:latest registry.ctdn.net/imaginary2:latest

docker push cubetiq/imaginary2:latest
docker push registry.ctdn.net/imaginary2:latest