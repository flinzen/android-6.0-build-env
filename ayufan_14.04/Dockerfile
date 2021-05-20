FROM ubuntu:14.04

RUN apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:openjdk-r/ppa && \
    add-apt-repository -y ppa:deadsnakes/ppa && \
    add-apt-repository ppa:ubuntu-toolchain-r/test && \
    apt-get update -y && \
    apt-get install -y openjdk-7-jdk nano python3.6 git-core gnupg flex bison gperf build-essential \
    zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 \
    lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache \
    libgl1-mesa-dev libxml2-utils xsltproc unzip mtools u-boot-tools \
    htop iotop sysstat iftop pigz bc device-tree-compiler lunzip \
    dosfstools 

RUN printf "deb http://security.ubuntu.com/ubuntu xenial-security main\ndeb http://cz.archive.ubuntu.com/ubuntu xenial main universe" >> /etc/apt/sources.list

RUN apt-get update

#RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash
#RUN apt install git-lfs

RUN apt-get install -y gcc-4.9 g++-4.9

RUN rm /usr/bin/gcc && rm /usr/bin/g++
RUN ln -s /usr/bin/gcc-4.9 /usr/bin/gcc && ln -s /usr/bin/g++-4.9 /usr/bin/g++

RUN apt-get install binutils
ENV PATH="/usr/lib/binutils-2.26/bin:$PATH"

RUN export USER=$(whoami)

RUN curl https://storage.googleapis.com/git-repo-downloads/repo > /usr/local/bin/repo && \
    chmod +x /usr/local/bin/repo

RUN curl -L https://github.com/aktau/github-release/releases/download/v0.6.2/linux-amd64-github-release.tar.bz2 | tar -C /tmp -jx && \
    mv /tmp/bin/linux/amd64/github-release /usr/local/bin/

RUN which repo && \
    which github-release 
