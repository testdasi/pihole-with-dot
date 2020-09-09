FROM testdasi/pihole-base-buster-plus:latest-amd64

# install stubby config
ADD stubby /tmp

COPY ./install.sh /
RUN /bin/bash /install.sh \
    && rm -f /install.sh

# run stubby in background
CMD sudo stubby -g -C /etc/stubby/stubby.yml
