module Bootcamp
  
  class Depot < Bootcamp::Base
    
    
    module Helpers  
      
      def manifest(filename)
        File.expand_path(File.join("manifest", "#{filename}.rb"), File.dirname(__FILE__))
      end
      
    end
    
  end
end