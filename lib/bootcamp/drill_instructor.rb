require 'thor/group'

module Bootcamp
  
  # Yeah, that's right. 
  # DrillInstructors are decendants of Thor!
  class DrillInstructor < Thor::Group
    include Thor::Actions
    
    argument :name
    class_option :framework, :default => :core, :aliases => ["-f"]
    class_option :test_suite, :default => :jasmine, :aliases => ["-t"]
    
    # Other things the drill instructor will do
    #
    #  1. Create the project folder
    #  2. Make the recruit go fetch any libraries needed
    #  3. Setup the git repo
    #  4. Send project to the JSHQ
    
    def self.source_root
      File.dirname(__FILE__)
    end
    
    def create_project
      create_file File.join(name, 'lib', "#{name}.js")
      create_file File.join(name, "README")
      empty_directory File.join(name, 'vendor')
      empty_directory File.join(name, 'tests')
    end
    
    def get_library
      library = "#{options[:framework]}.js"
      copy_file File.join(Bootcamp.root, 'vendor', library), File.join(name, 'vendor', library)
    end
    
    def setup_template
      apply File.expand_path("formations/html.rb", File.dirname(__FILE__))
    end
    
    def setup_plugin
      apply File.expand_path("formations/#{options[:framework]}.rb", File.dirname(__FILE__))
    end
    
  end
  
end