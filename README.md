Kibana
==============
Visualize time-stamped data from Elasticsearch

Installation
--------------

1. Install [Docker](https://www.docker.com)

2. Download automated build from public Docker Hub Registry: `docker pull qapps/kibana`
(alternatively, you can build an image from Dockerfile: `docker build -t="qapps/kibana" github.com/qualiapps/kibana`)

Running the daemon
-----------------

`docker run -d -p 80:80 --name kibana qapps/kibana`

ENV:
-----------------

`ES_HOST` - elasticsearch IP

`ES_PORT` - elasticsearch port (defaults to 9200)

`ES_SCHEME` - https|http (defaults to http)
