FROM ubuntu:latest

MAINTAINER jemimalwh@gmail.com

ARG SAMTOOLS_VERSION=1.10

ENV PACKAGES apt-utils wget build-essential gcc-multilib libz-dev libbz2-dev liblzma-dev libncurses5-dev

RUN set -ex

RUN apt-get update && \
    apt-get install -y --no-install-recommends ${PACKAGES} && \
    apt-get clean && \
    cd /home && \
    wget --no-check-certificate https://github.com/samtools/samtools/releases/download/1.10/samtools-1.10.tar.bz2 && \
    wget --no-check-certificate https://github.com/samtools/bcftools/releases/download/1.10.2/bcftools-1.10.2.tar.bz2 && \
    wget --no-check-certificate https://github.com/samtools/htslib/releases/download/1.10.2/htslib-1.10.2.tar.bz2 && \
    tar -jxvpf samtools-1.10.tar.bz2 && cd samtools-1.10 && ./configure --prefix=/home/samtools && make && make install && cd /home && \
    tar -jxvpf htslib-1.10.2.tar.bz2 && cd htslib-1.10.2 && ./configure --prefix=/home/htslib && make && make install && cd /home && \
    tar -jxvpf bcftools-1.10.2.tar.bz2 && cd bcftools-1.10.2 && ./configure --prefix=/home/bcftools && make && make install && \
    mkdir /work && cd /work && \
    apt-get --purge autoremove -y ${PACKAGES}

WORKDIR /work

ENV PATH /home/samtools/bin:/home/htslib/bin:/home/bcftools/bin:${PATH}