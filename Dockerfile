FROM python:3.10-bullseye
ARG HELLO_WORLD
RUN ["/bin/bash", "-c", ": ${HELLO_WORLD:?HELLO_WORLD build argument is required and must not be empty.}"]
ENV HELLO_WORLD=${HELLO_WORLD}
ENV PYTHONPATH="/workspace"
COPY . /workspace
# See https://docs.docker.com/engine/reference/builder/#cmd
CMD [ "sh", "-c", "python -m app ${HELLO_WORLD}"]