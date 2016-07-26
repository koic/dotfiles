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

function convert_uploadable_keynote_pdf() {
  if [ $# -eq 1 ]; then
      bash -c "LANG=C LC_ALL=C sed -i 's|/Registry (Adobe) /Ordering (Japan1) /Supplement [0-9]|/Registry(Adobe) /Ordering(Identity) /Supplement 0|g' $1"
  else
    echo "usage: convert_uploadable_keynote_pdf pdf_path" 1>&2

    return 1
  fi
}

alias insert_frozen_string_literal_of_magic_comment='find . -name *.rb | xargs sed -i -e "1i# -\*- frozen-string-literal: true -\*-\n"'

alias rbenv_update='pushd . && cd ~/.rbenv && git pull origin master && cd ~/.rbenv/plugins/ruby-build && git pull origin master && popd'
