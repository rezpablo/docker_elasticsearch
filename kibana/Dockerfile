FROM alpine:3.4

ENV KIBANA_VERSION=4.5.3

RUN apk add --quiet --no-progress --no-cache nodejs && adduser -D elasticsearch

USER elasticsearch

WORKDIR /home/elasticsearch

RUN wget -q -O - http://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz |  tar -zx \
    && mv kibana-${KIBANA_VERSION}-linux-x64 kibana \
    && rm -f kibana/node/bin/node kibana/node/bin/npm \
    && ln -s $(which node) kibana/node/bin/node \
    && ln -s $(which npm) kibana/node/bin/npm

CMD kibana/bin/kibana -Q
