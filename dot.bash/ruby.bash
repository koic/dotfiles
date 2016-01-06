alias configure_ruby='autoconf && ./configure --disable-install-doc --with-openssl-dir=`brew --prefix openssl`'
alias make_check_ruby='make clean && make -j && make check'
