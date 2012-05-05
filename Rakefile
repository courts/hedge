require 'treetop'
require 'yard'
require 'rake/clean'

CLEAN.include('doc/', '*.gem')

task :build do
  sh 'gem build hedge.gemspec'
end

task :install => [:clean, :build] do
  sh 'gem install hedge*.gem'
end
