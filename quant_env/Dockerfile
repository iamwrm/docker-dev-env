FROM ubuntu:20.04

## configure apt mirror
RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common
RUN apt-get install -y build-essential
RUN apt-get install -y python3 python3-pip


