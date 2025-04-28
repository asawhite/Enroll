FROM ghcr.io/linuxserver/baseimage-alpine:3.21

COPY root/ /
COPY --from=ghcr.io/astral-sh/uv:latest /uv /bin/uv

RUN \
  echo "**** install packages ****" && \
  apk add -U --upgrade --no-cache \
    python3

CMD [ "uv", "run", "enroll.py" ]