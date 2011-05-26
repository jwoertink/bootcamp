require 'rubygems'
require 'bootcamp/drill_instructor'
require 'bootcamp/recruit'
require 'bootcamp/armory'

module Bootcamp
  VERSION = File.read(File.join(File.dirname(__FILE__), "..", "VERSION"))
  
  class << self
    def to_s
      <<-HELP
      Usage:
        bootcamp PROJECT_NAME [-f framework] [-t test_suite]
      
      HELP
    end
    
    def root
      File.expand_path(File.join(File.dirname(__FILE__), '..')).to_s
    end
  end
end