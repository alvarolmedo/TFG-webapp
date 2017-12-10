
#starting
docker-compose up -d

curl -XPUT -D- 'http://localhost:9200/.kibana/doc/index-pattern:tfg-uoc' \
    -H 'Content-Type: application/json' \
    -d '{"type": "index-pattern", "index-pattern": {"title": "logstash-*", "timeFieldName": "@timestamp"}}'

cd kibana-data
cd searches
curl -H "Content-Type: application/json" -v -XPOST 'http://localhost:9200/tfg-uoc/search/all' -d @all.json
cd ../visualizations