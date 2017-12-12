#!/bin/bash

export IMAGE="webapp"
export TAG="latest"
export REGISTRY="registryuoc:5050"

docker build -t ${IMAGE}:${TAG} ./
echo "Image Built: $IMAGE Tag: $TAG"
docker tag ${IMAGE}:${TAG} ${REGISTRY}/${IMAGE}:${TAG}
docker push ${REGISTRY}/${IMAGE}:${TAG}
docker rmi ${IMAGE}:${TAG}
docker rmi python:3.6.0-alpine
