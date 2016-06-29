function replace_text() {
  local target

  if [ $# -eq 2 ]; then
    target="ag -l $1"
  elif [ $# -eq 3 ]; then
    target="ls $3"
  else
    echo "usage: replace_text pattern replacement [path]" 1>&2

    return 1
  fi

  bash -c "$target | xargs sed -i -e \"s/$1/$2/g\""
}

alias insert_frozen_string_literal_of_magic_comment='find . -name *.rb | xargs sed -i -e "1i# -\*- frozen-string-literal: true -\*-\n"'

alias rbenv_update='pushd . && cd ~/.rbenv && git pull origin master && cd ~/.rbenv/plugins/ruby-build && git pull origin master && popd'
