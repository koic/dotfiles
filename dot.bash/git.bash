alias g='git'

GIT_VERSION=2.4.4
source /usr/local/Cellar/git/$GIT_VERSION/etc/bash_completion.d/git-prompt.sh
source /usr/local/Cellar/git/$GIT_VERSION/etc/bash_completion.d/git-completion.bash

GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
