module Bootcamp
  
  # The Depot is where the Recruits get their tasks from
  class Depot < Bootcamp::Base
    
    module Drills  
      def self.included(base)
        base.send :extend, ClassMethods
        base.send :include, WhiskeyLocker
      end
      
      module ClassMethods
        
        # 'how' to run the method, and 'what' it does
        def description(how, what)
          Bootcamp::Base.parser.help_text << [how, what]
          # need to set these so when the help menu is called, it will pull this info
        end
        alias :desc :description
        
        def map(options = {})
          # This is for the option parsing. might need to move this
        end
        
        def method_options(options = {})
          # additional options available for a task
          options.each_pair do |k,v|
            Bootcamp::Base.parser.option(k, v.last, :default => v.first)
          end
        end
        
        def apply(formation)
          # This should take a template (formation) and run all the code in there
        end
        
        
      end
    
    end
  end
end