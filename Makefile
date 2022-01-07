.PHONY: $(MAKECMDGOALS)

archlinux_dev_build_clean:
	docker pull archlinux
	docker build --no-cache -t archlinux_dev archlinux_dev

archlinux_dev_build:
	docker build -t archlinux_dev \
		--build-arg USER=wr --build-arg USER_PASSWORD=123456 \
		archlinux_dev

archlinux_dev_debug:
	docker run \
		-it \
		--rm \
		--privileged --cap-add SYS_ADMIN --security-opt apparmor=unconfined \
		archlinux_dev bash

archlinux_dev_run:
	docker run \
		-p 1022:22 \
		-d \
		--restart=always \
		--privileged --cap-add SYS_ADMIN --security-opt apparmor=unconfined \
		archlinux_dev
