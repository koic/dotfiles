alias g='git'
alias cb='git checkout `git branch | peco | sed -e "s/\* //g" | awk "{print \$1}"`'

alias git_remote_add="git remote add upstream https://github.com/`git config --global github.user`/${PWD##*/}"

GIT_VERSION=`git --version | cut -d ' ' -f3`

PATH=$PATH:/usr/local/share/git-core/contrib/diff-highlight

source /usr/local/Cellar/git/$GIT_VERSION/etc/bash_completion.d/git-prompt.sh

if [ `echo $SHELL | grep -c "zsh"` -eq 1 ]; then
    source /usr/local/Cellar/git/$GIT_VERSION/etc/bash_completion.d/git-completion.zsh
fi

GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
