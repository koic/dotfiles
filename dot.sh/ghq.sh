function cr() {
    if [ $# -eq 1 ]; then
        repo=$(ghq list -p | sort | peco --query $1)
    else
        repo=$(ghq list -p | sort | peco)
    fi

    if [ -n "$repo" ]; then
        cd $repo
    fi
}

function ghqhub() {
    if [ $# -eq 1 ]; then
        hub browse $(ghq list | sort | peco --query $1 | cut -d "/" -f 2,3)
    else
        hub browse $(ghq list | sort | peco | cut -d "/" -f 2,3)
    fi
}

function ghqgem() {
    if [ $# -eq 1 ]; then
        open "https://rubygems.org/gems/$(ghq list | sort | peco --query $1 | cut -d "/" -f 3)"
    else
        open "https://rubygems.org/gems/$(ghq list | sort | peco | cut -d "/" -f 3)"
    fi
}
