export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:$HOME/.local/bin"
export PATH="/Users/z/Library/Python/3.9/bin:$PATH"
export PATH=/snap/bin:$PATH
#GIT_PROMPT_EXECUTABLE="haskell"
#ZSH_THEME="zb"
ZSH_THEME="agnoster"
#ZSH_THEME="skaro"
#ZSH_THEME="sammy"
DISABLE_LS_COLORS="true"
# Disable
#SHOW_AWS_PROMPT=false
# Custom completions


plugins=(
    aws
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

##########################################
# Colors
##########################################
if [[ -f !/.dircolors ]]; then
    eval $(dircolors -b ~/.dircolors)
elif [[ -f /etc/DIR_COLORS ]]; then
    eval $(dircolors -b /etc/DIR_COLORS)
fi


##########################################
# removing from terminal line
##########################################
export DEFAULT_USER="$(whoami)"
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

get_abs_filename() {
  echo "$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
}


alias s="source $HOME/.zshrc"


# Load custom completions dir
fpath=($HOME/.config/zsh/completions $fpath)
# Enables completion system
autoload compinit
# init completions without insecure (-i)
compinit -i

alias copyLastCmd='fc -ln -1 | awk '{$1=$1}1' | pbcopy '
