if [ -z "${GOPATH:-}" ]; then
    export GOPATH=$HOME/go
    PATH=$PATH:$GOPATH/bin
fi
