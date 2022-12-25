#!/bin/bash

# install stubby config
cd /tmp \
    && mkdir -p /etc/stubby \
    && cp -n ./stubby.yml /etc/stubby/ \
    && rm -f ./stubby.yml

## Piggy-backing on Pihole service ##
# Insert run lines below the call capsh comment
sed -i "/^# Call capsh with the detected capabilities/a stubby -g -C \/etc\/stubby\/stubby.yml" /etc/s6-overlay/s6-rc.d/pihole-FTL/run
# Insert finish lines above kill pihole
sed -i "/^killall -15 pihole-FTL/i killall -15 stubby" /etc/s6-overlay/s6-rc.d/pihole-FTL/finish
