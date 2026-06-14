# ~/.bashrc

[[ $- != *i* ]] && return

parse_git_branch() {

    readonly git_paths=("./.git/" "../.git/" "../../.git/" "../../../.git/" "../../../../.git/")

    local folder=""
    local path

    for path in "${git_paths[@]}"; do
        if [ -d "$path" ]; then
            folder="$path"
            break
        fi
    done

    if [[ -z "$folder" ]]; then
        return
    fi

    local head
    head=$(< "${folder}/HEAD")

    case "$head" in
        "ref: refs/heads/"*)
            echo "[branch ${head#ref: refs/heads/}]"
            ;;
        *)
            echo "[detached]"
            ;;
    esac
}

PS1=' \001\033[1;36m\002\w\001\033[0m\002 \001\033[1;37m\002($USER) $(parse_git_branch) \001\033[0m\002 \n $ '

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
