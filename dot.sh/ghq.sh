function ghqlist() {
    if [ $# -eq 1 ]; then
        cd $(ghq list -p | peco --query $1)
    else
        cd $(ghq list -p | peco)
    fi
}

function ghqhub() {
    if [ $# -eq 1 ]; then
        hub browse $(ghq list | peco --query $1 | cut -d "/" -f 2,3)
    else
        hub browse $(ghq list | peco | cut -d "/" -f 2,3)
    fi
}

function ghqgem() {
    if [ $# -eq 1 ]; then
        open "https://rubygems.org/gems/$(ghq list | peco --query $1 | cut -d "/" -f 3)"
    else
        open "https://rubygems.org/gems/$(ghq list | peco | cut -d "/" -f 3)"
    fi
}
