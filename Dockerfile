FROM ubuntu:18.04

LABEL maintainer="Hiren Patel <hello@patelhiren.com>"

RUN apt-get update && apt-get install -y \
    libncurses-dev \
    gawk \
    flex \
    bison \
    openssl \
    libssl-dev \
    build-essential \
    bc \
    kmod \
    cpio \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir -p /scripts \
    >/dev/null

COPY compile-kernel.sh /scripts
RUN chmod +x /scripts/compile-kernel.sh

CMD [ "/scripts/compile-kernel.sh" ]
