FROM archlinux:latest

# Configure software
# COPY mirrorlist /etc/pacman.d/mirrorlist
COPY pacman.conf /etc/pacman.conf
RUN pacman -Syu
RUN pacman -S --noconfirm zsh 
RUN pacman -S --noconfirm openssh sudo vi vim git htop zsh time
RUN pacman -S --noconfirm base-devel cmake ninja gcc clang lld patchelf
RUN pacman -S --noconfirm perf gperftools
RUN pacman -S --noconfirm python python-pip 
RUN pip install conan

# Use root to launch sshd
CMD ["/usr/sbin/sshd","-D"]
