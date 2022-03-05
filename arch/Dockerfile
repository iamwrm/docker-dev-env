FROM archlinux:latest

# Configure software
COPY pacman.conf /etc/pacman.conf
RUN pacman -Syu --noconfirm \
    && pacman -S --noconfirm \
        sudo vim openssh \
    && yes | pacman -Scc
COPY mirrorlist /etc/pacman.d/mirrorlist

# Use root to launch sshd
CMD ["/usr/sbin/sshd","-D"]
