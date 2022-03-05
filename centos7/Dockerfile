FROM centos:7

############################ Base ##############################
RUN yum install -y --nogpgcheck \
        epel-release  \
        cmake3 \
        vim \
        wget \
        git \
        make \
        gcc \
        gcc-c++ \
    && yum install -y centos-release-scl \
        devtoolset-11* \
        rh-python36
    && scl

# enable cmake
RUN ln -s /bin/cmake3 /bin/cmake

RUN scl enable devtoolset-11 "gcc --version"

# install conan
RUN scl enable rh-python36 "python --version"
