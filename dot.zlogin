cd `ghq root` && clean_outdated_recentf && backup_recentf && screen

local activerecord_debug_log="`ghq root`/github.com/rails/rails/activerecord/debug.log"
if [ -e $activerecord_debug_log ]; then
    echo 'Remove a log file at rails/rails local repository.'
    rm $activerecord_debug_log
fi
