module Bootcamp
  
  # A recruit is only given orders by a drill instructor
  class Recruit
    include Depot::Tasks
    
    attr_accessor :project, :framework, :test_suite
    
    #orders are the options given to a recruit
    def initialize(orders = {})
      self.class.instance_methods.each do |meth|
        instance_variable_set("@#{meth}", orders[meth]) if orders.key?(meth)
      end
    end
    
    #Create project files and folders
    def setup_project
    end
    
    #Get the library based off the project
    def recon_library
    end
    
    #Read proper manifest documents
    def run_manifest
    end
    
    #Set actual plugin
    def initialize_plugin
    end
    
    #Create plugin tests
    def prepare_tests
    end
    
  end
end