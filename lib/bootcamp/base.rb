module Bootcamp
  
  
  # This class will be the wrapper for the whole application.
  # It should initialize and set things in motion
  class Base
    extend Bootcamp
    attr_accessor :options
  
    def self.start
      #Parse Options
      #Create instance
      #Run command
    end
    
    def initialize(options = {})
      @options = options
      #Set any other "global" things needed for the other classes
    end
  
  end
end