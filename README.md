# [VS Code development containers](https://code.visualstudio.com/docs/remote/containers) with [`docker-compose`](https://docs.docker.com/compose/)

This repo demonstrates how to setup a VS Code devcontainer using multiple `docker-compose` files.

**`.env` file _must_ be in the same directory as the `docker-compose` files. See this [issue](https://github.com/microsoft/vscode-remote-release/issues/2706) for more info**. In this repo, we have duplicated `.env` from the base directory to also the subdirectory `/docker`.

## `docker-compose` Services

`code` is the container that VS Code will attach to. We mount our source code into the container.

`app` is the example Python application. This service would typically be an API or other application that is built using your source code. In this case, the image expects a single build argument, `HELLO_WORLD`, and prints this argument to stdout using the Python app. The environment variable is [automatically picked-up](https://code.visualstudio.com/remote/advancedcontainers/environment-variables#_option-2-use-an-env-file) from `.env` by docker.

`other_app` exists only to showcase that we can override an image's default `command` from our compose file. We can use environment variable subsitution in the service's `command`.

Both `app` and `other_app` should print the environment variable value of `HELLO_WORLD` to stdout and exit without any errors.
