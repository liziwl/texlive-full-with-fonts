ARG TEXLIVE_TAG=latest
FROM texlive/texlive:${TEXLIVE_TAG}

ENV DEBIAN_FRONTEND noninteractive

# 如果文件不存在，进行修复
RUN if [ ! -f /etc/apt/sources.list ]; then \
        echo "File [/etc/apt/sources.list] not found! Try fix." && \
        mkdir -p /etc/apt && \
        cp /usr/share/doc/apt/examples/sources.list /etc/apt/sources.list; \
    fi

RUN apt update && \
    apt install -y software-properties-common apt-utils && \
    sed -r -i 's/^deb(.*)$/deb\1 contrib/g' /etc/apt/sources.list && \
    apt update && \
    apt install -y ttf-mscorefonts-installer && \
    apt-get clean

WORKDIR /docs
