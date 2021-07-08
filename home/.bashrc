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
export PATH="$HOME/.local/bin:$PATH"

# PS1 prompt
export PS1="\[\033[38;5;11m\][\[$(tput sgr0)\]\[\033[38;5;12m\]\u\[$(tput sgr0)\]\[\033[38;5;11m\]@\[$(tput sgr0)\]\[\033[38;5;12m\]\h\[$(tput sgr0)\]\[\033[38;5;11m\]]\[$(tput sgr0)\]\[\033[38;5;9m\][\[$(tput sgr0)\]\[\033[38;5;12m\]\w\[$(tput sgr0)\]\[\033[38;5;9m\]]\[$(tput sgr0)\]: "
# Environment
EDITOR="vim"
VISUAL="vim"
PAGER="less"
BROWSER="firefox"
SHELL="bash"

# ASDF
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

neofetch

PATH="/home/josh/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/josh/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/josh/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/josh/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/josh/perl5"; export PERL_MM_OPT;
