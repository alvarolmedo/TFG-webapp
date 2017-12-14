#!/bin/bash

echo "=========="
echo "Smoke test"
echo "=========="

echo Check nginx
nc -v 192.168.0.2 80
if $? == 0;then
	echo 
	echo OK
else
	echo
	echo Fail in nginx
	exit 1
fi

echo Check nginx NAT
nc -v 192.168.0.1 80
if $? == 0;then
	echo 
	echo OK
else
	echo
	echo Fail in nginx
	exit 1
fi

echo Check webapp1
curl http://192.168.0.3:8000
if $? == 0;then
	echo 
	echo OK
else
	echo
	echo Fail in node_webapp1
	exit 1
fi
echo 

echo Check webapp2
curl http://192.168.0.4:8000
if $? == 0;then
	echo 
	echo OK
else
	echo
	echo Fail in node_webapp2
	exit 1
fi
