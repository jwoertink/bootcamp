module Bootcamp
  
  class Depot < Bootcamp::Base
    
    module Drills  
      def self.included(base)
        base.send :extend, ClassMethods
      end
      
      module ClassMethods
        
        # 'how' to run the method, and 'what' it does
        def description(how, what)
          # need to set these so when the help menu is called, it will pull this info
        end
        alias :desc :description
        
        def map(options = {})
          # This is for the option parsing. might need to move this
        end
        
        
        
      end
    
    end
  end
end