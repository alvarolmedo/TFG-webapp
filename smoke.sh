#!/bin/bash

echo "=========="
echo "Smoke test"
echo "=========="

echo Check nginx
nc -vz 192.168.0.1 80
if [ $? == 0 ];then
	echo 
	echo OK
else
	echo
	echo Fail in nginx
	exit 1
fi

echo Check Response Code...

HTTP_CODE=`curl -s -o /dev/null -w "%{http_code}"  http://192.168.0.1`
if [ $HTTP_CODE == '200' ];then
	echo $HTTP_CODE
	echo OK
else
	echo
	echo Fail in nginx
	exit 1
fi