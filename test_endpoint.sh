#!/bin/bash
#
#
test_endpoint=`curl -sL \
    -w "%{http_code}\\n" \
    "http://http://35.192.142.199:8081//" \
    -o /dev/null \
    --connect-timeout 3 \
    --max-time 5`

if [ "$test_endpoint" == "200" ];
then
   echo "OK"
   exit 0
else
   echo "Error"
   exit 1
fi
