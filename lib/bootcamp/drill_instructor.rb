module Bootcamp
  
  # DrillInstructor controls the bootcamp with all the different commands
  class DrillInstructor < Bootcamp::Depot
    
    desc "generate [PROJECT]", "creates a new project with the name PROJECT"
    map "g" => :generate
    method_options %w(framework -f) =>  "core"
    method_options %w(test_suite -t) => "jasmine"
    def generate(project = "hello_world")
      @project = project
      say "Generating #{@project} plugin", :blue
      # apply File.expand_path(File.join("manifest", "bootstrap.rb"), File.dirname(__FILE__))
      # apply File.expand_path("manifest/html.rb", File.dirname(__FILE__))
      # apply File.expand_path("manifest/#{options[:framework]}.rb", File.dirname(__FILE__))
      r = Recruit.new({:project => @project, :framework => options[:framework], :test_suite => options[:test_suite]})
      r.setup_project
      #armory = Armory.new
      
    end
    
    desc "promote PROJECT [LEVEL]", "give your PROJECT a promotion updating the verion by patch, minor, or major"
    method_options %w(level -l) => "patch"
    def promote(project)
      # :patch, :minor, :major
      level = options[:level]
      
      say "Promotions not ready yet", :red
    end
    
    desc "compress PROJECT", "minify the scripts for PROJECT"
    def compress(project)
      say "Compression not ready yet", :red
    end
    
    desc "deploy PROJECT", "deploys the PROJECT to JSHQ.org"
    def deploy(project)
      say "Deployment not ready yet", :red
    end
    
    desc "convert PROJECT", "converts PROJECT into CoffeeScript"
    def convert(project)
      say "Conversions not ready yet", :red
    end
    
    desc "version", "displays the bootcamp version"
    map "-v" => :version
    def version
      say "Bootcamp Version: #{Bootcamp::VERSION}", :green
    end
  
  end
end
