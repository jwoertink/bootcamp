require 'thor'

module Bootcamp
  
  # Yeah, that's right. 
  # DrillInstructors are decendants of Thor!
  class DrillInstructor < Thor
    include Thor::Actions
    
    desc "new [PROJECT]", "Create a new JSHQ Project"
    def new(project)
      opts = options.dup
      say "OPTIONS! #{opts}"
    end
    
    desc "version", "Shows the version of bootcamp"
    def version
      say "Version: #{Bootcamp::VERSION}"
    end
    map %w(-v --version) => :version
    
    
    # Other things the drill instructor will do
    #
    #  1. Create the project folder
    #  2. Make the recruit go fetch any libraries needed
    #  3. Setup the git repo
    #  4. Send project to the JSHQ
    
    
  end
  
end