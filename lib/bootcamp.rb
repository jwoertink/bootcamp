require 'rubygems'
require 'bootcamp/drill_instructor'
require 'bootcamp/recruit'

module Bootcamp
  VERSION = File.read(File.join(File.dirname(__FILE__), "..", "VERSION"))
  
  class << self
    def to_s
      <<-HELP
      This is the help menu
      bla bla.....
      HELP
    end
    
  end
end