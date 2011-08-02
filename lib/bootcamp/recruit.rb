module Bootcamp
  
  # The Recruit will do all of the actual work.
  class Recruit < Bootcamp::Depot
    include Depot::Drills
    
    #def initialize; end
    
    desc "generate [PROJECT]", "Creates a new project with the name PROJECT"
    map "g" => :generate
    method_options :framework =>  ["core", "The main framework ot be used. #{Bootcamp::Base.available_frameworks}"]
    method_options :test_suite => ["jasmine", "The test suite to be used. #{Bootcamp::Base.available_test_suites}"]
    def generate(project = "hello_world")
      @project = project
      soundoff("Generating #{project}", :yellow)
      #DrillInstructor.formations_with(options[:framework]).each do |formation|
        #apply(formation)
      #end
      
      #armory_checkin
    end
    # 
    # desc "promote PROJECT [LEVEL]", "give your PROJECT a promotion updating the verion by patch, minor, or major"
    # method_options %w(level -l) => "patch"
    # def promote(project)
    #   # :patch, :minor, :major
    #   level = options[:level]
    #   
    #   say "Promotions not ready yet", :red
    # end
    # 
    # desc "compress PROJECT", "minify the scripts for PROJECT"
    # def compress(project)
    #   say "Compression not ready yet", :red
    # end
    # 
    # desc "deploy PROJECT", "deploys the PROJECT to JSHQ.org"
    # def deploy(project)
    #   say "Deployment not ready yet", :red
    # end
    # 
    # desc "convert PROJECT", "converts PROJECT into CoffeeScript"
    # def convert(project)
    #   say "Conversions not ready yet", :red
    # end
    # 
    # desc "version", "displays the bootcamp version"
    # map "-v" => :version
    # def version
    #   say "Bootcamp Version: #{Bootcamp::VERSION}", :green
    # end
    
  end
end