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
RUN apt-get install -y \
    apt-transport-https ca-certificates curl gnupg2 software-properties-common \
    ssh \
    wget \
    build-essential \
    python3 python3-pip > /dev/null
RUN pip3 install conan > /dev/null


ENV \
    CONDA_ROOT=/opt/conda \
    PYTHON_VERSION="3.7.6" \
    CONDA_PYTHON_DIR=/opt/conda/lib/python3.7

RUN \
    pwd && \
    cd /root && \
    wget --no-verbose https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh -O ~/miniconda.sh && \
    /bin/bash ~/miniconda.sh -b -p $CONDA_ROOT && \
    export PATH=$CONDA_ROOT/bin:$PATH && \
    rm ~/miniconda.sh && \
    $CONDA_ROOT/bin/conda config --system --add channels conda-forge && \
    $CONDA_ROOT/bin/conda config --system --set auto_update_conda False && \
    $CONDA_ROOT/bin/conda config --system --set show_channel_urls True && \
    $CONDA_ROOT/bin/conda config --system --set channel_priority strict && \
    # Deactivate pip interoperability (currently default), otherwise conda tries to uninstall pip packages
    $CONDA_ROOT/bin/conda config --system --set pip_interop_enabled false && \
    # Update conda
    $CONDA_ROOT/bin/conda update -y -n base -c defaults conda && \
    $CONDA_ROOT/bin/conda update -y setuptools && \
    $CONDA_ROOT/bin/conda install -y conda-build && \
    # Update selected packages - install python 3.8.x
    $CONDA_ROOT/bin/conda install -y --update-all python=$PYTHON_VERSION && \
    # Link Conda
    ln -s $CONDA_ROOT/bin/python /usr/local/bin/python && \
    ln -s $CONDA_ROOT/bin/conda /usr/bin/conda && \
    # Update
    $CONDA_ROOT/bin/conda install -y pip && \
    $CONDA_ROOT/bin/pip install --upgrade pip && \
    chmod -R a+rwx /usr/local/bin/ && \
    # Cleanup - Remove all here since conda is not in path as of now
    # find /opt/conda/ -follow -type f -name '*.a' -delete && \
    # find /opt/conda/ -follow -type f -name '*.js.map' -delete && \
    $CONDA_ROOT/bin/conda clean -y --packages && \
    $CONDA_ROOT/bin/conda clean -y -a -f  && \
    $CONDA_ROOT/bin/conda build purge-all
    # Fix permissions

RUN \
    conda install -y --update-all \
        'python='$PYTHON_VERSION \
        'spyder=5.1.5' \
        'qt=5.9.7' \
        'pyqt=5.9.2' \ 
        'notebook' \
        'ipython' \
        'scipy' \
        'numpy' \
        scikit-learn \
        matplotlib
        

RUN wget --no-verbose https://github.com/krallin/tini/releases/download/v0.19.0/tini -O /tini && \
    chmod +x /tini

ENTRYPOINT ["/tini", "-g", "--"]
