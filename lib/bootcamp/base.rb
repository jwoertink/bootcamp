module Bootcamp
  
  class Base < Thor
    extend Bootcamp
    include Thor::Actions
    
    class << self
      
      def available_frameworks
        ["core", "jquery", "prototype", "dojo", "mootools", "midori"].join(', ')
      end

      def available_test_suites
        ["jasmine", "jspec", "qunit"].join(', ')
      end
      
    end
  end
end