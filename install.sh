#!/bin/bash

# install stubby config
cd /tmp \
    && mkdir -p /etc/stubby \
    && cp -n ./stubby.yml /etc/stubby/ \
    && rm -f ./stubby.yml

## Piggy-backing on Pihole service ##
sed -i "/^lighttpd /i stubby -g -C \/config\/stubby.yml" /etc/s6-overlay/s6-rc.d/lighttpd/run
sed -i "/^killall -9 lighttpd/i killall stubby" /etc/s6-overlay/s6-rc.d/lighttpd/finish
