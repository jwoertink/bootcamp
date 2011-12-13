# encoding: utf-8

require 'bundler/gem_tasks'
require 'rake'
require 'rspec/core/rake_task'

namespace :spec do
  RSpec::Core::RakeTask.new(:normal) do |t|
    t.pattern ='spec/**/*_spec.rb'
    t.rcov = false
  end
end

desc "Start IRB with all runtime dependencies loaded"
task :console, [:script] do |t,args|
  dirs = ['lib'].select { |dir| File.directory?(dir) }
  original_load_path = $LOAD_PATH
  if File.exist?('Gemfile')
    require 'bundler'
    Bundler.setup(:default)
  end
  
  $LOAD_PATH.unshift(*dirs)
  ARGV.clear
  require 'irb'
  puts "Booting console"
  IRB.conf[:SCRIPT] = args.script
  IRB.start
  # return the $LOAD_PATH to it's original state
  $LOAD_PATH.reject! { |path| !(original_load_path.include?(path)) }
end


desc "RSpec tests"
task "spec" => "spec:normal"

task "default" => "spec"
