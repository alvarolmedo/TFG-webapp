#!/bin/bash

echo "======================"
echo "== Deploying webapp =="
echo "======================"

mkdir -p /var/log/nginx
chmod 777 /var/log/nginx
docker-compose up -d

