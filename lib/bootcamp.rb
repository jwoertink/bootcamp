require 'thor'
require 'json'
require 'faraday'
require 'bootcamp/base'
require 'bootcamp/depot'
require 'bootcamp/armory'
require 'bootcamp/worker'
require 'bootcamp/version'

module Bootcamp
  
  class << self
    def extended(base)
      
    end
    
    def root
      File.expand_path(File.join(File.dirname(__FILE__), '..')).to_s
    end
  end

end
