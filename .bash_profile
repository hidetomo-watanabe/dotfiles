if [ "$(uname)" = 'Darwin' ]; then
  export LSCOLORS=gxfxcxdxbxegedabagacad
  alias ls='ls -G'
else
  alias ls='ls --color=auto'
fi
alias ll='ls -lhat'
alias grep='grep --color'
alias df='df -h'

source ~/.git-prompt.sh
export PS1='\[\e[1;37m\][\u@\h \W$(__git_ps1 " (%s)")]\n \\$ \[\e[m\]'
