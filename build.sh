#!/bin/bash

export TAG="webapp:latest"

docker build -t $TAG ./
echo "Built: $TAG"