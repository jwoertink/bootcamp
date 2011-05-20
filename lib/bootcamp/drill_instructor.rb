require 'thor/group'

module Bootcamp
  
  # Yeah, that's right. 
  # DrillInstructors are decendants of Thor!
  class DrillInstructor < Thor::Group
    include Thor::Actions
    
    argument :name
    class_option :framework, :default => :core, :aliases => ["-f"]
    
    # Other things the drill instructor will do
    #
    #  1. Create the project folder
    #  2. Make the recruit go fetch any libraries needed
    #  3. Setup the git repo
    #  4. Send project to the JSHQ
    
    def self.source_root
      File.dirname(__FILE__)
    end
    
    def self.project_path
      "#{name}"
    end
    
    def create_project
      create_file File.join(name, 'lib', "#{name}.js")
      create_file File.join(name, "README")
      empty_directory File.join(name, 'vendor')
    end
    
    def get_library
      #@recruit = Bootcamp::Recruit.new({:unit => options[:framework]})
      #@recruit.recon_library
      library = "#{options[:framework]}.js"
      copy_file File.join(Bootcamp.root, 'vendor', library), File.join(DrillInstructor.project_path, 'vendor')
    end
    
    def setup_template
      create_file File.join(name, "index.html") do
        <<-HTML
        <!DOCTYPE html>
        <html>
          <head>
            <title>#{name.upcase} Javascript Plugin</title>
            <meta charset="utf-8">
          </head>
          <body>
            <h1>Hello World</h1>
            <script charset="utf-8" src="vendor/#{options[:framework]}.js"></script>
            <script charset="utf-8" src="lib/#{name}.js"></script>
          </body>
        </html>
        HTML
      end
    end
    
  end
  
end