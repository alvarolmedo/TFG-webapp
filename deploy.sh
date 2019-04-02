#!/bin/bash

echo "======================"
echo "== Deploying webapp =="
echo "======================"

mkdir -p nginx-logs
chmod 777 nginx-logs
docker-compose up -d

