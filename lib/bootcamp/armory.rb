require 'git'

module Bootcamp
  
  # The Armory is where the plugin will be held
  class Armory
    attr_accessor :git
    
    # Make the plugin repo, and do the first commit
    def initialize
      #@git = Git.init
      checkin("First Commit")
      # need to add the repo origin, and branch.
    end
    
    def checkin(message = "Simple Commit")
      puts "Checking in files. #{message}"
      #@git.add('.')
      #@git.commit(message)
    end
    
    def deposit
      # pushes the files up
    end
    
  end
end