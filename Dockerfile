FROM ubuntu:latest

ADD actions-runner actions-runner
ADD init.docker.sh init.docker.sh
RUN ./init.docker.sh
RUN rm -rf actions-runner

RUN groupadd -g 48 docker
RUN groupadd -g 50000 gha
RUN useradd -u 50000 -g 50000 gha
RUN mkdir /home/gha
RUN chown -R gha:gha /home/gha

WORKDIR /home/gha
CMD ["bash", "-l"]
