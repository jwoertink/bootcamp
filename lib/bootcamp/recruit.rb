# going back to not using this file until I can figure out a better way 

module Bootcamp
  
  # A recruit is only given orders by a drill instructor
  class Recruit
    
    attr_accessor :project, :framework, :test_suite, :tasks
    
    def self.setup_project(orders)
      
    end
    
    #orders are the options given to a recruit
    def initialize(orders = {})
      @project = orders[:project]
      @framework = orders[:framework]
      @test_suite = orders[:test_suite]
      @tasks = Depot.new
      @tasks.orders.merge!(orders) # this fails because @tasks.orders is a frozen hash >_<
    end
    
    def setup_project
      tasks.say("setup project, aye sir!", :yellow)
      tasks.apply File.expand_path(File.join("manifest", "bootstrap.rb"), File.dirname(__FILE__))
    end
    
    #Get the library based off the unit
    def recon_library
      #say "Recruit is getting library #{framework}", :green
      #copy_file File.join(Bootcamp.root, 'vendor', library), File.join(name, 'vendor', library)
      #say "Recruit's mission complete!", :green
    end
    
    def lay_templates
      
    end
    
    def initialize_plugin
      
    end
    
    def prepare_tests
      
    end
    
  end
  
end