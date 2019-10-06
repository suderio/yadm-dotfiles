#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#export http_proxy=http://192.168.56.1:3128
#export https_proxy=$http_proxy

# If command don't exists, search repos
source /usr/share/doc/pkgfile/command-not-found.bash

# Line wrap on resize
shopt -s checkwinsize

source ~/.bash_aliases
source ~/bin/.custom

export HISTFILESIZE=20000
export HISTSIZE=10000
shopt -s histappend
# Combine multiline commands into one in history
shopt -s cmdhist
# Ignore duplicates, ls without options and builtin commands
HISTCONTROL=ignoredups
export HISTIGNORE="&:ls:[bf]g:exit"

