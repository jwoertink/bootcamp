require 'thor'
require 'json'
require 'faraday'
require 'fileutils'

require 'bootcamp/base'
require 'bootcamp/depot'
require 'bootcamp/armory'
require 'bootcamp/worker'
require 'bootcamp/version'
require 'bootcamp/nested_multipart'

module Bootcamp
  class << self
    def extended(base)
    end

    def root
      File.expand_path(File.join(File.dirname(__FILE__), '..')).to_s
    end

    # Initialize .jshq file
    def initialize_jshq_config_file
      config_file = File.join(ENV["HOME"], ".jshq")
      unless File.exists?(config_file)
        FileUtils.cp(File.join(File.dirname(__FILE__), "..", "data", "jshq"), config_file)
      end
    end
  end
end

Bootcamp.initialize_jshq_config_file
