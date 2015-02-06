FROM fedora:21

MAINTAINER Yury Kavaliou <test@test.com>

#RUN yum -y update && yum clean all
RUN yum -y install nginx && yum clean all
RUN yum -y install tar

RUN cd /tmp
RUN curl -O https://download.elasticsearch.org/kibana/kibana/kibana-3.1.2.tar.gz
RUN tar -xzvf ./kibana-3.1.2.tar.gz
RUN cp -R ./kibana-3.1.2/* /usr/share/nginx/html/
RUN rm ./kibana-3.1.2.tar.gz
RUN rm -rf ./kibana-3.1.2

ADD start-kibana.sh /usr/local/sbin/start-kibana.sh
RUN chmod 700 /usr/local/sbin/start-kibana.sh

ENTRYPOINT [ "/bin/bash", "/usr/local/sbin/start-kibana.sh" ]
CMD [""]

EXPOSE 80
