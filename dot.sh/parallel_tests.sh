alias parallel_prepare="RAILS_ENV=test bundle exec rake 'parallel:prepare[4]'"
alias parallel_spec_with_cuke="RAILS_ENV=test bundle exec parallel_test spec --type rspec -n 4 --suffix '_spec.rb|.feature'"
