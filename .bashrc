#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"

alias cd="z"
alias ff="fastfetch"
alias vim="nvim"

# dirs
export VCPKG_DIR="~/Documents/vcpkg"
export LOCAL_BIN_DIR="/home/oak/.local/bin"

# path
export PATH="$PATH:$VCPKG_DIR"
export PATH="$PATH:$LOCAL_BIN_DIR"

# starship
eval "$(starship init bash)"

# zoxide
eval "$(zoxide init bash)"
