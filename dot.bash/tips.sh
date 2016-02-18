function replace_text() {
  if [ $# -ne 2 ]; then
    echo "usage: replace_text pattern replacement" 1>&2

    return 1
  fi

  bash -c "ack -l $1 | xargs sed -i -e \"s/$1/$2/g\""
}

alias insert_frozen_string_literal_of_magic_comment='find . -name *.rb | xargs sed -i -e "1i# -\*- frozen-string-literal: true -\*-\n"'
