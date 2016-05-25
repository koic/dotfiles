alias ghqlist='cd $(ghq root)/$(ghq list | peco)'
alias ghqhub='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'
