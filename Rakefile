require 'rake/testtask'
require 'yard'

desc 'Start the twitter_search app'
task :start do
  ruby 'app/twitter_search.rb'
end

# Define test task
Rake::TestTask.new do |t|
    t.libs << 'test'
    t.libs << 'app'
    t.pattern = 'test/**/*_test.rb'
    t.verbose = true
  end

# Rake tasks for YARD documention
YARD::Rake::YardocTask.new do |t|
end

# Default task
task :default => [:test]