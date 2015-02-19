#Kibana version 3.1.2

FROM nginx:1.7

MAINTAINER Yury Kavaliou <Yury_Kavaliou@epam.com>

ENV KIBANA_VERSION 3.1.2

ADD https://download.elasticsearch.org/kibana/kibana/kibana-$KIBANA_VERSION.tar.gz /tmp/kibana.tar.gz
COPY start-kibana.sh /usr/local/sbin/start-kibana.sh

RUN tar xzf /tmp/kibana.tar.gz \
	&& mv kibana-$KIBANA_VERSION/* /usr/share/nginx/html \
	&& chmod 700 /usr/local/sbin/start-kibana.sh

EXPOSE 80

ENTRYPOINT [ "/bin/bash", "/usr/local/sbin/start-kibana.sh" ]
