FROM ubuntu:latest

MAINTAINER jemimalwh@gmail.com

ARG BWA_VERSION=0.7.17

ENV PACKAGES apt-utils wget build-essential gcc-multilib libz-dev

RUN set -ex

RUN apt-get update && \
    apt-get install -y --no-install-recommends ${PACKAGES} && \
    apt-get clean && \
    cd /home && \
    wget --no-check-certificate https://github.com/lh3/bwa/releases/download/v0.7.17/bwa-0.7.17.tar.bz2 && \
    tar -jxvpf bwa-0.7.17.tar.bz2 && cd bwa-0.7.17 && make && \
    mkdir /work && cd /work && \
    apt-get --purge autoremove -y ${PACKAGES}

WORKDIR /work

ENV PATH /home/bwa-0.7.17:${PATH}