# ARG FRM='testdasi/pihole-base-buster-plus'
ARG FRM='testdasi/pihole-base-plus'
ARG TAG='latest'

FROM ${FRM}:${TAG}
ARG FRM
ARG TAG

# install stubby config
ADD stubby /tmp

COPY ./install.sh /
RUN /bin/bash /install.sh \
    && rm -f /install.sh

RUN echo "$(date "+%d.%m.%Y %T") Built from ${FRM} with tag ${TAG}" >> /build_date.info
