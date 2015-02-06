#!/bin/bash

ES_HOST="http://localhost"
ES_PORT=9200
KIBANA_CONFIG_PATH=/usr/share/nginx/html/config.js

while getopts ":d:p:" option; do
  case "$option" in
    d)
      ES_HOST=${OPTARG} ;;
    p)
      ES_PORT=${OPTARG} ;;
    \?)
      echo "
Usage: [options]
  Options:

   -d        elasticsearch domain name or IP with http
   -p        elasticsearch port
   " >&2
      exit 1
      ;;
  esac
done

# Update kibana config
sed -i '/elasticsearch:/c\    elasticsearch: "'${ES_HOST}':'${ES_PORT}'",' ${KIBANA_CONFIG_PATH}

# Start nginx
/usr/sbin/nginx
tail -f /var/log/nginx/error.log

exit 0
