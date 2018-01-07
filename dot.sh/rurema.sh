#
# Require repositories:
#
# * ghq get https://github.com/rurema/doctree
# * ghq get https://github.com/rurema/bitclust
#
# How to build db files:
#
#  cd `ghq root`/github.com/rurema/doctree && rake generate
#
function rurema_server_setup() {
    for version in 1.8.7 1.9.3 2.0.0 2.1.0 2.2.0 2.3.0 2.4.0 2.5.0
    do
        ln -sfn /tmp/db-$version `ghq root`/github.com/rurema/bitclust/db-$version
    done
}

alias rurema_server_run="cd `ghq root`/github.com/rurema/bitclust && bundle exec rackup config.ru"
