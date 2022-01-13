FROM archlinux:latest

# Configure software
# COPY mirrorlist /etc/pacman.d/mirrorlist
COPY pacman.conf /etc/pacman.conf
RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm zsh \
    openssh sudo vi vim git htop time \
    base-devel cmake ninja gcc clang lld patchelf \
    perf gperftools \
    python python-pip 
RUN pip install conan

# Use root to launch sshd
CMD ["/usr/sbin/sshd","-D"]
