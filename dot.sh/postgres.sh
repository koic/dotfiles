PG_HOME=/Library/PostgreSQL/9.1/bin
PATH=$PATH:$PG_HOME

export PGDATA=/usr/local/var/postgres

alias pg_start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pg_stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
