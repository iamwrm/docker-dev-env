FROM ubuntu:20.04

ENV \
    SHELL="/bin/bash" \
    HOME="/root"  \
    DISPLAY=":1" \
    TERM="xterm"

## configure apt mirror
# RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
RUN apt-get update > /dev/null
RUN apt-get upgrade -y > /dev/null
RUN apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common ssh > /dev/null
RUN apt-get install -y wget > /dev/null
RUN apt-get install -y build-essential > /dev/null
RUN apt-get install -y python3 python3-pip > /dev/null
RUN pip3 install conan > /dev/null

ENV CONDA_PATH=/root/miniconda
ENV CONDA=${CONDA_PATH}/bin/conda

RUN \
    wget https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh && \
    bash Miniconda3-py37_4.10.3-Linux-x86_64.sh -b -p ${CONDA_PATH}

RUN \
    ${CONDA} create -q -n py37env python=3.7.6 && \
    ${CONDA} init bash && \
    bash ${CONDA_PATH}/etc/profile.d/conda.sh 

RUN \
    ${CONDA} activate py37env && \
    ${CONDA} info -a && \
    ${CONDA} list && \
    echo "Conda Python version: $(python --version)" && \
    echo "Which python version is running: $(which python)"

RUN \
    echo "Conda Python version: $(python --version)" && \
    echo "Which python version is running: $(which python)"