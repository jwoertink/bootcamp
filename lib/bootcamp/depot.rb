module Bootcamp
  
  class Depot < Thor
    include Thor::Actions
    source_root File.dirname(__FILE__)
    
    module Tasks
      def self.included(base)
        base.send :include, Thor::Base
        #base.send :include, Thor::Actions
      end
      
      module ClassMethods
      end
    end
  end
end