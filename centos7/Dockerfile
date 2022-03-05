FROM centos:7

############################ Base ##############################
RUN yum swap -y -- remove fakesystemd -- install systemd systemd-libs
RUN yum install -y --nogpgcheck \
    centos-release-scl-rh \
    epel-release  \
    yum-plugin-ovl \
    devtoolset-11* \
    cmake3 \
    vim wget \
    git \
    rh-python36-python-pip \
    make \
    gcc gcc-c++  \
    lua 51 \
    lua-devel \
    readline-devel

# enable gcc7 & python command
RUN echo "source scl_source enable devtoolset-11 rh-python36" >> /root/.bashrc

# enable cmake
RUN ln -s /bin/cmake3 /bin/cmake

RUN scl enable devtoolset-7 "gcc --version"

# install conan
RUN scl enable rh-python36 "pip install conan"
