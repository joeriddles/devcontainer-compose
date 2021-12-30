# [VS Code Devcontainer](https://code.visualstudio.com/docs/remote/containers) with [`docker-compose`](https://docs.docker.com/compose/)

This repo demonstrates how to setup a VS Code devcontainer using multiple docker-compose files.

## `docker-compose` Services

`app` is the example Python application. This service would typically be an API or other container that is built using your source code. In this case, the container image simple expects a single build argument, `HELLO_WORLD`, and prints this argument to stdout using Python. The environment variable is [automatically picked-up](https://code.visualstudio.com/remote/advancedcontainers/environment-variables#_option-2-use-an-env-file) from `.env` by VS Code when opening the folder as a devcontainer.

`code` is the container that VS Code will attach to. We mount our source code into the container.
