require 'rubygems'
require 'highline'

require './bootcamp/drill_instructor'

module Bootcamp
  
  class Enlistee < Thor::Group
    include DrillInstructor
    
    class << self
      
      def run
        choose do |menu|
          menu.prompt = "Choose your framework"
          menu.choice(:jquery) { say("yay jquery") }
          menu.choices(:mootools, :prototype) { say("Not jquery?") }
        end
      end
      
    end
  end
end