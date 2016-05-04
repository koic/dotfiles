alias g='git'

GIT_VERSION=`git --version | cut -d ' ' -f3`

PATH=$PATH:/usr/local/Cellar/git/$GIT_VERSION/share/git-core/contrib/diff-highlight

source /usr/local/Cellar/git/$GIT_VERSION/etc/bash_completion.d/git-prompt.sh

if [ `echo $SHELL | grep -c "bash"` -eq 1 ]; then
  source /usr/local/Cellar/git/$GIT_VERSION/etc/bash_completion.d/git-completion.bash
fi

GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
