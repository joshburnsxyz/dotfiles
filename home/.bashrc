[[ $- != *i* ]] && return

## ALIAS ##
alias ls='ls --color=auto'
alias g="git"
alias ga="git add"
alias gcmsg="git commit -m"
alias gc="git commit"
alias gc!="git commit --amend"

# ASDF
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

neofetch
