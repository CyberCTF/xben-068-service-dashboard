#!/bin/sh
# /check_service runs the status script for a service name and answers in JSON.
curl -sS --max-time 15 -H 'Content-Type: application/json' -d '{"service_name":"apache2"}' http://web/check_service | grep -q '"service_name"'
