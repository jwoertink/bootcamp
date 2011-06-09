module Bootcamp
  
  # DrillInstructor controls the bootcamp with all the different commands
  class DrillInstructor < Bootcamp::Depot
    source_root File.dirname(__FILE__)
    
    desc "new [PROJECT]", "creates a new project with the name PROJECT"
    map "-n" => :new
    method_options %w(framework -f) =>  "core"
    method_options %w(test_suite -t) => "jasmine"
    def new(project = "hello_world")
      @project = project
      say "Generating #{@project} plugin", :blue
      apply File.expand_path(File.join("manifest", "bootstrap.rb"), File.dirname(__FILE__))
      apply File.expand_path("manifest/html.rb", File.dirname(__FILE__))
      apply File.expand_path("manifest/#{options[:framework]}.rb", File.dirname(__FILE__))
      #armory = Armory.new
      #armory.checkin
    end
    
    desc "promote PROJECT [LEVEL]", "give your PROJECT a promotion updating the verion by patch, minor, or major"
    map "-p" => :promote
    method_options %w(level -l) => "patch"
    def promote(project)
      # :patch, :minor, :major
      level = options[:level]
      
      say "Promotions not ready yet", :red
    end
    
    desc "compress PROJECT", "minify the scripts for PROJECT"
    map "-c" => :compress
    def compress(project)
      say "Compression not ready yet", :red
    end
    
    desc "deploy PROJECT", "deploys the PROJECT to JSHQ.org"
    map "-d" => :deploy
    def deploy(project)
      say "Deployment not ready yet", :red
    end
  
  end
end
