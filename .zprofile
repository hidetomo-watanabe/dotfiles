if [ "$(uname)" = 'Darwin' ]; then
  export LSCOLORS=gxfxcxdxbxegedabagacad
  alias ls='ls -Ga'
else
  alias ls='ls --color=auto -a'
fi
alias ll='ls -lht'
alias grep='grep --color'
alias df='df -h'

source ~/.zshrc
