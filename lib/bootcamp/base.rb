module Bootcamp
  
  # This class will be the wrapper for the whole application.
  # It should initialize and set things in motion
  class Base
    extend Bootcamp
    include Thor::Actions
    
    attr_accessor :options
    
    @@parser = Parser.instance
    
    class << self
      # Starts off the whole app
      def sound_reveille(options = ARGV)
        parser.banner = "Usage: bootcamp [action] [options]"
        parser.version = "Bootcamp v.#{Bootcamp::VERSION}"
        options << "-h" if options.empty?  
        opts = parse_options(options)
        self.new(opts).run_command if opts[:action]
      end
      
      def parser
        @@parser
      end
      
      # Maybe needs it's own class to handle this?
      def parse_options(opts)
        raise MissingOptionsError if opts.nil?
        options = parser.process!(opts)
        options.merge!({:action => opts[0], :value => opts[1]})
        options
      end
      
      def available_frameworks
        ["JavaScript(core)", "jQuery", "Prototype", "Dojo", "Mootools", "Midori"].join(', ')
      end
      
      def available_test_suites
        ["Jasmine", "jSpec", "QUnit"].join(', ')
      end
    
    end
  
    def initialize(options = {})
      @options = options
      #Set any other "global" things needed for the other classes
    end
    
    def run_command
      DrillInstructor.give_command(@options[:action], @options[:value])
    end
  
  
    class MissingOptionsError < StandardError; end
  end
end