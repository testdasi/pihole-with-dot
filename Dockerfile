FROM testdasi/pihole-base-buster-plus:latest

# install stubby config
ADD stubby /tmp

COPY ./install.sh /
RUN /bin/bash /install.sh \
    && rm -f /install.sh
