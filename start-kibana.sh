#!/bin/bash
ES_HOST=${ES_HOST:-\"+window.location.hostname+\"}
ES_PORT=${ES_PORT:-9200}
ES_SCHEME=${ES_SCHEME:-http}
KIBANA_CONFIG_PATH=/usr/share/nginx/html/config.js

#Update kibana config
sed -i '/elasticsearch:/c\    elasticsearch: "'$ES_SCHEME'://'$ES_HOST':'$ES_PORT'",' ${KIBANA_CONFIG_PATH}

#Start nginx
nginx -c /etc/nginx/nginx.conf -g 'daemon off;'

