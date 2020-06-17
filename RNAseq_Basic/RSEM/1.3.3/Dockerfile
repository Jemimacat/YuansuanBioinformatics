FROM ubuntu:latest

MAINTAINER jemimalwh@gmail.com

ARG RSEM_VERSION=1.3.3
ARG STAR_VERSION=2.7.4a

ENV PACKAGES apt-utils wget build-essential gcc-multilib expat libexpat-dev zlib1g-dev unzip make 

RUN set -ex

RUN apt-get update && \
    apt-get install -y --no-install-recommends ${PACKAGES} && \
    apt-get clean && \
    cd /home && \
    wget --no-check-certificate https://github.com/deweylab/RSEM/archive/v1.3.3.tar.gz && \
    wget --no-check-certificate https://github.com/alexdobin/STAR/archive/${STAR_VERSION}.zip && \
    tar -zxvf v1.3.3.tar.gz && cd RSEM-1.3.3 && make && make install && cd /home && \
    unzip ${STAR_VERSION}.zip && cd STAR-${STAR_VERSION}/source && make STARstatic && mkdir /home/bin && cp STAR /home/bin && cd /home && 'rm' -rf STAR-${STAR_VERSION} && \
    apt-get --purge autoremove -y ${PACKAGES} && \
    apt-get install -y --no-install-recommends perl cpanminus python && \
    mkdir /work && cd /work

WORKDIR /work

ENV PATH /home/RSEM-1.3.3:/home/bin:${PATH}