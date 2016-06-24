alias ghqlist='cd $(ghq list -p | peco)'
alias ghqhub='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'
