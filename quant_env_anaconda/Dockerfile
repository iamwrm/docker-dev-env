FROM ubuntu:20.04

## configure apt mirror
RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common ssh
RUN apt-get install -y wget
RUN apt-get install -y build-essential
RUN apt-get install -y python3 python3-pip
RUN pip3 install conan

ADD install_conda.sh /root

RUN bash /root/download_conda.sh