module Bootcamp
  
  # Drill Instructor gives the recruit their tasks
  class DrillInstructor
    
    class << self
      
      # These are all of the templates needed for creating a new plugin
      def formations_with(framework)
        ["bootstrap", "html", framework].map { |f| File.expand_path(File.join("manifest", "#{f}.rb"), File.dirname(__FILE__)) }
      end
      
      def give_command(command, value)
        raise UnknownCommandError unless Recruit.instance_methods(false).include?(command.to_sym)
        Recruit.new.send(command, value)
      end
      
    end
  
    class UnknownCommandError < StandardError; end
  end
end
