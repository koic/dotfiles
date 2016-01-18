alias kill_rspec="ps aux | grep rspec | grep -v grep | awk '{ print $2 }' | xargs kill -9"
