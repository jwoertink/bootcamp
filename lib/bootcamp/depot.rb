module Bootcamp
  
  class Depot < Bootcamp::Base
    
    # These are helper methods used by the worker
    module Helpers  
      
      # This returns the path to the manifest file FILENAME
      def manifest(filename)
        File.expand_path(File.join("manifest", "#{filename}.rb"), File.dirname(__FILE__))
      end
      
      # Should make sure that there is a folder named PROJECT
      # maybe also check manifest? If PROJECT doesn't exist, then raise an error
      def check_project_exists!(project)
        true
      end
      
    end
    
  end
end