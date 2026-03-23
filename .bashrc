# ~/.bashrc

[[ $- != *i* ]] && return

PS1=" \001\033[1;36m\002\w\001\033[0m\002 \001\033[1;37m\002($USER)\001\033[0m\002 \n $ 

# command
alias ls="ls --color=auto"
alias less="less -S -N"
alias ns="netstat -tapn"
alias diff="diff -u"
alias rm="rm -rf"
alias c="clear"
alias f="free -h"
alias copy="xclip -selection clipboard"

export EDITOR="/usr/bin/vim"

