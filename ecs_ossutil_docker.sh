## ossutil tools install and config
cd /opt
wget http://gosspublic.alicdn.com/ossutil/1.6.14/ossutil64
chmod 755 ossutil64
./ossutil64 config
# oss-cn-hangzhou-internal.aliyuncs.com
export PATH=/opt:$PATH

## docker install
cd /opt
yum check-update
curl -fsSL https://get.docker.com/ > getdocker.sh
sh getdocker.sh --mirror Aliyun
systemctl start docker
systemctl status docker
systemctl enable docker

## docker images
docker pull jemimalwh/rsem:1.3.3
docker pull jemimalwh/bwa:0.7.17
docker pull jemimalwh/samtools:1.10
docker pull jemimalwh/trust4:0.2.0
docker pull jemimalwh/star:2.7.4a
docker pull boradinstitute/gatk:4.1.7.0
docker pull boradinstitute/picard:latest
docker pull boradinstitute/cromwell:51-aecae0e
#docker pull boradinstitute/gatk3:3.8-1
#docker pull boradinstitute/gtex_rnaseq:latest
#docker pull boradinstitute/oncotator:1.9.9.0
#docker pull boradinstitute/viral-ngs:1.25.0-rc8