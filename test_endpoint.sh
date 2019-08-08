#!/bin/bash
#
#
test_endpoint=`curl -sL \
    -w "%{http_code}\\n" \
    "http://104.197.78.52:8081/" \
    -o /dev/null \
    --connect-timeout 3 \
    --max-time 5`

if [ "$test_endpoint" == "200" ];
then
   echo "OK";
else
   echo "error";
   echo $test_endpoint;
fi
