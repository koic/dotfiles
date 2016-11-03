# Settings for share history
function share_history {
    history -a
    history -c
    history -r
}

PROMPT_COMMAND='share_history'

shopt -u histappend

export HISTSIZE=9999

# Settings for peco
_replace_by_history() {
    local l=$(HISTTIMEFORMAT= history | tac | sed -e 's/^\s*[0-9]*    \+\s\+//' | peco --query "$READLINE_LINE")
    READLINE_LINE="$l"
    READLINE_POINT=${#l}
}
bind -x '"\C-r": _replace_by_history'
bind    '"\C-xr": reverse-search-history'
