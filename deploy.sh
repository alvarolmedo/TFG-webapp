
#starting
docker-compose up -d

echo "==========================="
echo "== Putting index-pattern =="
echo "==========================="

curl -XPUT -D- 'http://172.16.0.1:9200/.kibana/doc/index-pattern:tfg-uoc' \
    -H 'Content-Type: application/json' \
    -d '{"type": "index-pattern", "index-pattern": {"title": "logstash-*", "timeFieldName": "@timestamp"}}'

echo "=============================="
echo "== Importing kibana objects =="
echo "=============================="

cd kibana-data
./kibana-importer.py --json everything.json --kibana-url http://172.16.0.1:5601
