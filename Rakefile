require 'treetop'
require 'yard'
require 'rake/clean'

CLEAN.include('doc/', '*.gem')

desc "Build the gem from gemspec"
task :build do
  sh 'gem build hedge.gemspec'
end

desc "Build and install the gem from current gemspec"
task :install => [:clean, :build] do
  sh 'gem install hedge*.gem'
end
