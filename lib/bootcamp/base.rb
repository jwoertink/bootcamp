module Bootcamp
  class Base
    extend Bootcamp
    attr_accessor :options
  
    def self.start
      soundoff("test", :yellow)
    end
    
    def initialize(options = {})
      @options = options
    end
  
  end
end