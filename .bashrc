# ~/.bashrc

[[ $- != *i* ]] && return

PS1=" \001\033[1;36m\002\w\001\033[0m\002 \001\033[1;37m\002($USER)\001\033[0m\002 \n $ 

# command
alias ls="ls -t --color=auto"
alias rm="rm -rf"
alias c="clear"
alias f="free -h"
alias copy="xclip -selection clipboard"

export EDITOR="/usr/bin/vim"

add_to_path() {
  case ":$PATH:" in
    *":$1:"*) ;;
    *) export PATH="$PATH:$1" ;;
  esac
}

add_to_path "$HOME/.local/bin"
add_to_path "$HOME/bin"
