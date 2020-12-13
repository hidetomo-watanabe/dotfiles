# alias
if [ "$(uname)" = 'Darwin' ]; then
  export LSCOLORS=gxfxcxdxbxegedabagacad
  alias ls='ls -Ga'
else
  alias ls='ls --color=auto -a'
fi
alias ll='ls -lht'
alias grep='grep --color'
alias df='df -h'

# git status
source ~/.git-prompt.sh
export PS1='\[\e[1;37m\][\u@\h \W$(__git_ps1 " (%s)")]\n \\$ \[\e[m\]'
