
module Bootcamp
  
  # A recruit is only given orders by a drill instructor
  class Recruit
    include Thor::Actions
    
    destination_root = File.dirname(__FILE__)
    
    #orders are the options given to a recruit
    def initialize(orders = {})
      @project = orders[:project]
      @framework = orders[:framework]
      @test_suite = orders[:test_suite]
    end
    
    def project
      @project
    end
    
    def framework
      @framework
    end
    
    def test_suite
      @test_suite
    end
    
    def setup_project
      apply File.expand_path(File.join("manifest", "bootstrap.rb"), File.dirname(__FILE__))
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