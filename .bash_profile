alias ls='ls -G'
alias ll='ls -Glhat'
alias grep='grep --color'
alias df='df -h'

source ~/.git-prompt.sh
export LSCOLORS=gxfxcxdxbxegedabagacad
export PS1='\[\e[1;37m\][\W$(__git_ps1 " (%s)")]\n \\$ \[\e[m\]'
