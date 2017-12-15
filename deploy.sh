#!/bin/bash

echo "======================"
echo "== Deploying webapp =="
echo "======================"

docker-compose up -d

echo "==========================="
echo "== Putting index-pattern =="
echo "==========================="

curl -XPUT 'http://172.16.0.1:9200/.kibana/doc/index-pattern:tfg-uoc' \
    -H 'Content-Type: application/json' \
    -d '{"type": "index-pattern", "index-pattern": {"title": "logstash-*", "timeFieldName": "@timestamp"}}'

echo ""
echo "=============================="
echo "== Importing kibana objects =="
echo "=============================="

cd kibana-objects
./kibana-importer.py --json everything.json --kibana-url http://172.16.0.1:5601
