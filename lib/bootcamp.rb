require 'rubygems'
require 'highline/import'
require 'thor'
require 'bootcamp/drill_instructor'

module Bootcamp
  
  # Enlistee will be the body of information for the plugin being created
  # 
  class Enlistee < Thor
    include DrillInstructor
    
    class << self
      
      def run!(*args)
        options = DrillInstructor.inspect_args(args)
        puts options
        choose do |menu|
          menu.prompt = "Choose your framework"
          menu.choices(:jquery) { |framework| puts framework }
        end
      end
      
    end
  end
end