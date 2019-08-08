FROM gitpod/workspace-full:latest

USER root
# Install custom tools, runtime, etc.
RUN apt-get update && apt-get install -y \
        bc \
        patchutils \
        gperf \
        lzop \
        xfonts-utils \
        xsltproc \
        parallel \
        pigz \
        libjson-perl \
        libxml-parser-perl \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
