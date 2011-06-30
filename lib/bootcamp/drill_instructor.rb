module Bootcamp
  
  class DrillInstructor
    
    class << self
      
      def formations_with(framework)
        ["bootstrap", "html", framework].map { |f| File.expand_path(File.join("manifest", "#{f}.rb"), File.dirname(__FILE__)) }
      end
      
    end
  
  end
end
