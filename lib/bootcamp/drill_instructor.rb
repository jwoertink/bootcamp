module Bootcamp
  
  # Drill Instructor gives the recruit their tasks
  class DrillInstructor
    
    class << self
      
      # These are all of the templates needed for creating a new plugin
      def formations_with(framework)
        ["bootstrap", "html", framework].map { |f| File.expand_path(File.join("manifest", "#{f}.rb"), File.dirname(__FILE__)) }
      end
      
    end
  
  end
end
