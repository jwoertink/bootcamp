module Bootcamp
  
  # A recruit is only given orders by a drill instructor
  class Recruit
    include Depot::Tasks
    source_root File.dirname(__FILE__)
    
    attr_accessor :project, :framework, :test_suite
    
    #orders are the options given to a recruit
    def initialize(orders = {})
      self.class.instance_methods.each do |meth|
        instance_variable_set("@#{meth}", orders[meth]) if orders.key?(meth)
      end
    end
    
    #Create project files and folders
    def setup_project
      say "Setting up project", :yellow
      # thor/actions.rb:102:in `destination_root': undefined method `last' for nil:NilClass (NoMethodError)
      apply File.expand_path(File.join("manifest", "bootstrap.rb"), File.dirname(__FILE__))
      apply File.expand_path("manifest/html.rb", File.dirname(__FILE__))
      apply File.expand_path("manifest/#{options[:framework]}.rb", File.dirname(__FILE__))
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