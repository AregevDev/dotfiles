#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# evals
eval "$(zoxide init bash)"

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

# path
export PATH="$PATH:$VCPKG_DIR"

# starship
eval "$(starship init bash)"
