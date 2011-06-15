require 'git'

module Bootcamp
  
  # The Armory is where the repo will be held
  class Armory
    
    attr_accessor :git
    
    def initialize
      @git = Git.init
      checkin("First Commit")
      # need to add the repo origin, and branch.
    end
    
    def checkin(message = "Simple Commit")
      @git.add('.')
      @git.commit(message)
    end
    
    def deposit
      # pushes the files up
    end
    
  end
end