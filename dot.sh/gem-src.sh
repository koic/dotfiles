GEM_SRC_ORIGIN_PATH=`ghq root`/github.com/amatsuda/gem-src
if [ ! -e $GEM_SRC_ORIGIN_PATH ]; then
    ghq get https://github.com/amatsuda/gem-src
fi

GEM_SRC_SYMLINK_PATH=$HOME/.rbenv/plugins/gem-src
if [ ! -e $GEM_SRC_SYMLINK_PATH ]; then
    ln -sf $GEM_SRC_ORIGIN_PATH $HOME/.rbenv/plugins/gem-src
fi
