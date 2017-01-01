function parallel_rspec_rails_cuke() {
    if [ $# -eq 1 ]; then
        bash -c "RAILS_ENV=test bundle exec parallel_test spec --type rspec -n 4 --suffix '$1'"
    else
        echo "usage: parallel_rspec_rails_cuke path" 1>&2

        return 1
    fi
}

alias parallel_db_environment_set="bundle exec parallel_test --exec 'rails db:environment:set RAILS_ENV=test' -n 4"
alias parallel_db_schema_load="bundle exec parallel_test --exec 'rails db:schema:load RAILS_ENV=test' -n 4"
alias parallel_db_migrate_reset="bundle exec parallel_test --exec 'rails db:migrate:reset RAILS_ENV=test' -n 4"
alias parallel_prepare="RAILS_ENV=test bundle exec rails 'parallel:prepare[4]'"
alias parallel_spec="parallel_rspec_rails_cuke '_spec.rb'"
alias parallel_cuke="parallel_rspec_rails_cuke '.feature'"
alias parallel_spec_with_cuke="parallel_rspec_rails_cuke '_spec.rb|.feature'"
