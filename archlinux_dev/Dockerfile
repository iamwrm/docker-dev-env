FROM archlinux:latest
ARG USER
ARG USER_PASSWORD
WORKDIR /home/${USER}

# Configure software
COPY mirrorlist /etc/pacman.d/mirrorlist
COPY pacman.conf /etc/pacman.conf
RUN pacman -Syy
RUN pacman -S --noconfirm zsh 
RUN pacman -S --noconfirm openssh sudo vi vim git htop zsh time
RUN pacman -S --noconfirm base-devel cmake ninja gcc clang lld patchelf
RUN pacman -S --noconfirm perf gperftools

RUN pacman -S --noconfirm python python-pip 
RUN pip install conan

## Configure user
RUN mkdir -p /home/${USER} 
RUN useradd ${USER}
RUN usermod -aG wheel ${USER}
RUN echo "%wheel   ALL=(ALL:ALL) ALL" >> /etc/sudoers

RUN echo ${USER} > /tmp/username
RUN echo ${USER_PASSWORD} > /tmp/passwd
RUN echo $(cat /tmp/username):$(cat /tmp/passwd) | chpasswd
RUN rm -rf /tmp/*
RUN chown -R ${USER}:${USER} /home/${USER}
RUN chown -R ${USER}:${USER} /tmp


RUN chsh -s /bin/zsh ${USER}
RUN chown -R ${USER}:${USER} /home/${USER}
# This fix the pubkey problem
RUN chmod -R 755 /home/${USER}

# Use root to launch sshd
CMD ["/usr/sbin/sshd","-D"]

USER ${USER}
