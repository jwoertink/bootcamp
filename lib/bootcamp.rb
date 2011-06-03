require 'rubygems'
require 'thor'
require 'bootcamp/drill_instructor'
require 'bootcamp/recruit'
require 'bootcamp/armory'

module Bootcamp
  VERSION = File.read(File.join(File.dirname(__FILE__), "..", "VERSION"))
  
  class << self
    def root
      File.expand_path(File.join(File.dirname(__FILE__), '..')).to_s
    end
  end
end