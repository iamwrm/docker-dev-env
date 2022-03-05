# Docker dev env


## archlinux_dev

```bash
#build docker image
make archlinux_dev_build
#run env
make archlinux_dev_run
```

## quant_env

Add clena_layer from resources.


## Run docker container:

```bash
docker run -it --hostname=arch2-debian1 -v /home/wr/container_home:/home/wr -v /home/wr/workspace:/home/wr/workspace -p 1022:22 deb
ian:sid bash
```

## Podman in Podman
https://www.redhat.com/sysadmin/podman-inside-container