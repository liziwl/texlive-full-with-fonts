ARG TEXLIVE_TAG=latest
FROM texlive/texlive:${TEXLIVE_TAG}

ENV DEBIAN_FRONTEND noninteractive

RUN apt update && \
    apt install -y software-properties-common apt-utils && \
    sed -r -i 's/^deb(.*)$/deb\1 contrib/g' /etc/apt/sources.list && \
    apt update && \
    apt install -y ttf-mscorefonts-installer

WORKDIR /docs
