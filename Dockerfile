FROM testdasi/pihole-base-buster:latest

# install stubby config
ADD stubby /tmp
RUN cd /tmp \
    && mkdir -p /etc/stubby \
    && cp -n ./stubby.yml /etc/stubby/ \
    && rm -f ./stubby.yml

# install stubby
RUN sudo apt-get -y install stubby

# run stubby in background
RUN sudo stubby -g
