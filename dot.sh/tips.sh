#
# Example
#
# % out_diff "echo 'hello'" "echo 'bye'"
# < hello
# ---
# > bye
#
function out_diff() {
    if [ $# -eq 2 ]; then
        bash -c "diff <( $1 ) <( $2 )"
    else
        echo "usage: outdiff command1 command2" 1>&2

        return 1
    fi
}

function convert_uploadable_keynote_pdf() {
    extension=${1##*.}

    if [ $extension != "pdf" ]; then
        echo 'Suffix needs to "pdf"' 1>&2

        return 1
    fi

    if [ $# -eq 1 ]; then
        bash -c "LANG=C LC_ALL=C sed -i 's|/Registry (Adobe) /Ordering (Japan1) /Supplement [0-9]|/Registry(Adobe) /Ordering(Identity) /Supplement 0|g' $1"
    else
        echo "usage: convert_uploadable_keynote_pdf pdf_path" 1>&2

        return 1
    fi
}

alias find_100mb_or_more_files_in_src="find `ghq root` -size +100000000c"

alias insert_frozen_string_literal_of_magic_comment='find . -name "*.rb" | xargs sed -i -e "1i# -\*- frozen-string-literal: true -\*-\n"'

alias rbenv_update='pushd . && cd ~/.rbenv && git pull origin master && cd ~/.rbenv/plugins/ruby-build && git pull origin master && popd'

alias flay_v='flay -v --diff . | less'
