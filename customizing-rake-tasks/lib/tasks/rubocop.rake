# frozen_string_literal: true

namespace :rubocop do
  desc 'Run Rubocop'

  task :run do
    puts 'Running Rubocop!'
    bundle exec 'rubocop -a'
  end
end
