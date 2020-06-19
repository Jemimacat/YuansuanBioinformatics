FROM ubuntu:latest

MAINTAINER jemimalwh@gmail.com

ARG FASTP_VERSION=0.21.0

ENV PACKAGES wget

RUN set -ex

RUN apt-get update && \
    apt-get install -y --no-install-recommends ${PACKAGES} && \
    apt-get clean && \
    cd /home && \
    wget http://opengene.org/fastp/fastp && \
    chmod a+x ./fastp && \
    apt-get --purge autoremove -y ${PACKAGES}

ENV PATH /home:${PATH}