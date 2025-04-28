FROM ghcr.io/linuxserver/baseimage-alpine:3.21

RUN \
  echo "**** install packages ****" && \
  apk add -U --upgrade --no-cache \
    python3 && \\
  echo "**** create app folder ****" && \
  mkdir /enroll

COPY root/ /
COPY --from=ghcr.io/astral-sh/uv:latest /uv /bin/uv