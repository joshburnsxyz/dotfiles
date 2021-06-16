[[ $- != *i* ]] && return

## ALIAS ##
alias ls='ls --color=auto'
alias g="git"
alias ga="git add"
alias gcmsg="git commit -m"
alias gc="git commit"
alias gc!="git commit --amend"
alias gst="git status"
alias src="clear && source ~/.bashrc"
alias cdd="cd .."

# Path
export PATH="$HOME/.emacs.d/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# Environment
EDITOR="emacs -nw"
VISUAL="emacs -nw"
PAGER="less"
BROWSER="firefox"
SHELL="bash"

# ASDF
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

neofetch
