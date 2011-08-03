require 'bootcamp/parser'
require 'bootcamp/base'
require 'bootcamp/armory'
require 'bootcamp/depot'
require 'bootcamp/whiskey_locker'
require 'bootcamp/drill_instructor'
require 'bootcamp/recruit'


module Bootcamp
  VERSION = File.read(File.join(File.dirname(__FILE__), "..", "VERSION"))
  
  class << self
    
    def extended(base)
      base.send :include, self::WhiskeyLocker
    end
    
  end

end