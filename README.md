Usage

0. create a new user `gha` with userid `50000`, and add it to the docker group (groupid 48 here)
1. Download the Github action runner binary to the current folder, refs: https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners
2. build a local docker image with this [Dockerfile](./Dockerfile)
3. run ./docker-run.sh
4. init the runner inside the docker
