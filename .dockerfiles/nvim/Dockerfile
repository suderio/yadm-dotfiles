FROM ubuntu:18.04
LABEL MAINTAINER="Paulo Suderio <paulo.suderio@bndes.gov.br>"
LABEL DESCRIPTION="Ambiente de desenvolvimento"
LABEL APPLICATION="nvim"


# Better terminal support
ENV TERM screen-256color
ENV DEBIAN_FRONTEND noninteractive

# Update and install
RUN apt-get update && apt-get upgrade -y && \
      apt-get install -y \
      htop \
      bash \
      curl \
      wget \
      git \
      software-properties-common \
      python-dev \
      python-pip \
      python3-dev \
      python3-pip \
      ctags \
      shellcheck \
      netcat \
      ack-grep \
      sqlite3 \
      unzip \
      # For python crypto libraries
      libssl-dev \
      libffi-dev \
      locales \
      # For Youcompleteme
      cmake \
      tmux \
      ca-certificates \
      gosu

# Generally a good idea to have these, extensions sometimes need them
RUN locale-gen pt_BR.UTF-8
ENV LANG pt_BR.UTF-8
ENV LANGUAGE pt_BR:pt
ENV LC_ALL pt_BR.UTF-8

# Install Neovim
RUN add-apt-repository ppa:neovim-ppa/stable
RUN apt-get update && apt-get install -y neovim

# Neovim needs this so that <ctrl-h> can work
RUN infocmp $TERM | sed 's/kbs=^[hH]/kbs=\\177/' > /tmp/$TERM.ti
RUN tic /tmp/$TERM.ti
# Command for the image
CMD ["/bin/bash"]
ENV USER_ID ${LOCAL_USER_ID:-9001}
RUN useradd --shell /bin/bash -u $USER_ID -o -c "" -m user
RUN export HOME=/home/user
VOLUME /home/user
CMD gosu user bash

