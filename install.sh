#!/bin/bash

# install stubby config
cd /tmp \
    && mkdir -p /etc/stubby \
    && cp -n ./stubby.yml /etc/stubby/ \
    && rm -f ./stubby.yml

# run stubby as service
mkdir -p /etc/services.d/stubby \
    && echo '#!/usr/bin/with-contenv bash' > /etc/services.d/stubby/run \
    && echo 's6-echo "Starting stubby"' >> /etc/services.d/stubby/run \
    && echo 'stubby -C /etc/stubby/stubby.yml' >> /etc/services.d/stubby/run \
    && echo '#!/usr/bin/with-contenv bash' > /etc/services.d/stubby/finish \
    && echo 's6-echo "Stopping stubby"' >> /etc/services.d/stubby/finish \
    && echo 'killall -9 stubby' >> /etc/services.d/stubby/finish
