module Bootcamp
  
  class Base < Thor
    extend Bootcamp
    include Thor::Actions
    
    class << self
      
      # TODO: make this dynamically pull from the vendor directory
      def available_frameworks
        # Why is Bootcamp.root not available here?
        ["core", "jquery", "prototype", "dojo", "mootools", "midori", "yui"].join(', ')
      end

      # TODO: make this dynamically pull from the vendor directory
      def available_test_suites
        ["jasmine", "jspec", "qunit"].join(', ')
      end
      
    end
  end
end