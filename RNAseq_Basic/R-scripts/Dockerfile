ARG R_VERSION=3.4.1
FROM r-base:${R_VERSION}
MAINTAINER jemimalwh@gmail.com

RUN set -ex
RUN mkdir /work && mkdir -p /root/R_script && R -e "install.packages(c('ggplot2', 'reshape2', 'crayon', 'ggrepel', 'grid', 'methods', 'plyr','scales','sqldf','sva'),dependencies=TRUE, repos='http://cran.rstudio.com/')"
COPY ./*.R /root/R_script/

WORKDIR /work
ENV PATH /root/R_script:$PATH