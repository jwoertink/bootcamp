module Bootcamp
  
  class Depot < Thor
    include Thor::Actions
    
    module Tasks
      def self.included(base)
        base.extend ClassMethods
      end
      
      module ClassMethods
        
      end
    end
  end
end