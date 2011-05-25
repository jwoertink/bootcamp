require 'git'

module Bootcamp
  
  # The Armory is where the repo will be held
  class Armory
    
    attr_accessor :git
    
    def initialize
      @git = Git.init
    end
    
    def checkin
      @git.add('.')
      @git.commit('First Commit')
      
    end
  end
end