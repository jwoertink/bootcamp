require 'git'

module Bootcamp
  
  # The Armory is where the repo will be held
  class Armory
    
    attr_accessor :git
    
    def initialize(project)
      @git = Git.init(project)
    end
    
    def checkin
      @git.add('.')
      @git.commit('First Commit')
      
    end
  end
end