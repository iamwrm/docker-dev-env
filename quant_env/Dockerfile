FROM ubuntu:20.04

## configure apt mirror
# RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
RUN apt-get update > /dev/null
RUN apt-get upgrade -y > /dev/null
RUN apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common ssh > /dev/null
RUN apt-get install -y wget > /dev/null
RUN apt-get install -y build-essential > /dev/null
RUN apt-get install -y python3 python3-pip > /dev/null
RUN pip3 install conan > /dev/null

ADD download_conda.sh /root
ADD conda_common_0.sh /root
ADD conda_common_1.sh /root

RUN bash /root/download_conda.sh
RUN bash /root/conda_common_0.sh
RUN bash /root/conda_common_1.sh