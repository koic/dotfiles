alias ekill='emacsclient -e "(kill-emacs)"'
alias e='emacsclient -nw -a ""'
alias emacs='emacsclient -nw -a ""'

function backup_recentf() {
    cp ~/.emacs.d/.recentf ~/.emacs.d/.recentf.`date "+%Y%m%d_%H%M%S"`
}

function clean_outdated_recentf() {
    find ~/.emacs.d/.recentf.* -mtime +90
}
