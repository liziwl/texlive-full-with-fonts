ARG TEXLIVE_TAG=latest
FROM texlive/texlive:${TEXLIVE_TAG}

ENV DEBIAN_FRONTEND noninteractive

COPY sources.list /etc/apt/sources.list

RUN apt update && \
    apt install -y apt-utils software-properties-common && \
    apt update && \
    apt install -y ttf-mscorefonts-installer && \
    apt-get clean

WORKDIR /docs
