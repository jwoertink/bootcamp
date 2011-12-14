module Bootcamp
  
  class Worker < Bootcamp::Depot
    include Depot::Helpers
    source_root File.dirname(__FILE__)
    
    desc "generate [PROJECT]", "creates a new project with the name PROJECT"
    map "g" => :generate
    method_option :library, :aliases => %w(-l), :default => :core, :desc => "LIBRARY options: #{available_frameworks}"
    method_option :test_suite, :aliases => %w(-t), :default => :jasmine, :desc => "TEST_SUITE options: #{available_test_suites}"
    def generate(project = "hello_world")
      @project = project
      say "Generating #{@project} plugin", :green
      apply manifest("bootstrap")
      apply manifest("html")
      apply manifest(options[:library])
      armory = Armory.new
    end
    
    desc "promote PROJECT [LEVEL]", "give your PROJECT a promotion updating the verion by patch, minor, or major"
    method_option :grade, :aliases => %w(-g), :default  => :patch, :desc => "GRADE options: patch, minor, major"
    def promote(project)
      # :patch, :minor, :major
      level = options[:level]
      check_project_exists!(project)
      
      say "Promotions not ready yet", :red
    end
    
    desc "compress PROJECT", "minify the scripts for PROJECT"
    def compress(project)
      say "Compression not ready yet", :red
    end
    
    desc "convert PROJECT", "converts PROJECT into CoffeeScript"
    def convert(project)
      say "Conversions not ready yet", :red
    end
    
    desc "deploy PROJECT", "deploys the PROJECT to JSHQ.org"
    def deploy(project)
      # ensure project meets all requirements
      # Connect to jshq.org
      # upload project.
      say "Deployment not ready yet", :red
    end
    
    desc "install PLUGIN", "searches jshq.org for PLUGIN, and downloads it"
    def install(plugin)
      # connect to jshq.org
      # use search API to find plugin
      # download plugin
      say "Installing plugins not ready yet", :red
    end
    
    desc "-v | --version", "displays the bootcamp version"
    map %w(-v --version) => :version
    def version
      say("Bootcamp v.#{Bootcamp::VERSION}")
    end
    
  end
end
