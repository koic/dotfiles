function replace_text() {
  if [ $# -ne 2 ]; then
    echo "usage: replace_text pattern replacement" 1>&2

    return 1
  fi

  bash -c "ag -l $1 | xargs sed -i -e \"s/$1/$2/g\""
}

alias insert_frozen_string_literal_of_magic_comment='find . -name *.rb | xargs sed -i -e "1i# -\*- frozen-string-literal: true -\*-\n"'

alias b='git checkout `git branch | peco | sed -e "s/\* //g" | awk "{print \$1}"`'

alias rbenv_update='pushd . && cd ~/.rbenv && git pull origin master && cd ~/.rbenv/plugins/ruby-build && git pull origin master && popd'
