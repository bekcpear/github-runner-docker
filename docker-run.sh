#!/bin/bash
#

docker run -it --rm \
	-v /var/run/docker:/var/run/docker \
	-v /var/run/docker.sock:/var/run/docker.sock \
	-v /var/run/containerd:/var/run/containerd \
	-v "$(pwd)/actions-runner":/home/gha/actions-runner \
	--user gha:48 \
	gha/ubuntu
