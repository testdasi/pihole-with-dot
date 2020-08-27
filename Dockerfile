FROM testdasi/pihole-base-buster-plus:latest

# install stubby config
ADD stubby /tmp
RUN cd /tmp \
    && mkdir -p /etc/stubby \
    && cp -n ./stubby.yml /etc/stubby/ \
    && rm -f ./stubby.yml

# run stubby in background
CMD sudo stubby -g
