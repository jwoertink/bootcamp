require 'git'
require 'optparse'
#require 'erb'

# DrillInstructor should take care of the heavy lifting
# Use all the Thor::Actions
# setup the initial git repo
# Create the project

module Bootcamp
  module DrillInstructor
    include Thor::Actions
    
    def self.inspect_args(args)
      option = Option.new(:flag, :names => %w(--framework -f), :opt_found => true, :opt_not_found => false)
      # How the hell does the OptionParser work?!? Examples out there blow.
      argument_opts = OptionParser.getopts(args)
    end
    
  end
end