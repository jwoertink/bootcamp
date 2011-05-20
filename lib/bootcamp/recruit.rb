module Bootcamp
  
  # A recruit is only given orders by a drill instructor
  class Recruit
    
    #orders are the options given to a recruit
    def initialize(orders = {})
      @unit = orders[:unit] || 'core'
    end
    
    #The unit is the framework the recruit belongs to
    #if the recruit belongs to 'core', then no external library is needed
    # e.g. jquery, mootools, etc...
    def unit
      @unit
    end
    
    #Get the library based off the unit
    def recon_library
      
    end
    
  end
  
end