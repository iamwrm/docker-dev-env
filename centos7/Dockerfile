FROM centos:7

############################ Base ##############################
RUN \
    yum update -y \
    && yum install -y --nogpgcheck \
        epel-release  \
        cmake3 \
        vim \
        wget \
        git \
        make \
        gcc \
        gcc-c++ \
    && yum install -y --nogpgcheck \
        scl-utils \
        centos-release-scl \
        devtoolset-11* \
        rh-python36

# enable cmake
RUN ln -s /bin/cmake3 /bin/cmake

RUN scl enable devtoolset-11 "gcc --version"

# install conan
RUN scl enable rh-python36 "python --version"
