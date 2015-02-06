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

`docker run -d -p 80:80 --name kibana qapps/kibana -d http://elasticsearch-ip -p elasticsearch-port`

options:

`-d, default="http://localhost"` - elasticsearch domain name or IP with http
`-p, default=9200` - elasticsearch port
