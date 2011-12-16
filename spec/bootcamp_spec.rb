require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Bootcamp" do
  
  let :options do
    opts = ARGV.clear
  end
  
  let :version do
    Bootcamp::VERSION
  end
  
  it "should display a help menu if no options are given" do
    options.should be_empty
    capture(:stdout) { Bootcamp::Worker.start }.should =~ /Tasks:/
  end
  
  context "help" do
    after(:each) do
      capture(:stdout) { Bootcamp::Worker.start(options) }.should =~ /Tasks:/
      options.clear
    end
    
    it "should show the help menu with the argument '--help'" do
      options << "--help"
    end
    
    it "should show the help menu with the argument '-h'" do
      options << "-h"
    end
    
  end
  
  context "version" do
    after(:each) do
      capture(:stdout) { Bootcamp::Worker.start(options) }.chomp.should == "Bootcamp v.#{version}"
      options.clear
    end
    
    it "should show the version with the argument '-v'" do
      options << "-v"
    end
    
    it "should show the version with the argument '--version'" do
      options << "--version"
    end
  end
  
  # Tests seem to hang in this area.....
  context "new" do
    after(:each) do
      options.clear
    end
    # it "should take a project name as an option, and return 'Generating test_project'" do
    #   options << "generate" << "test_project"
    #   capture(:stdout) { Bootcamp::Worker.start(options) }.should =~ /Generating test_project plugin/
    # end
    
    # it "should generate templates using jquery" do
    #   options << "generate" << "test_project"
    #   options << "-l"<< "jquery"
    #   Bootcamp::Base.available_frameworks.should include("jquery")
    #   capture(:stdout) { Bootcamp::Worker.start(options) }.should =~ /vendor\/jquery.js/
    # end
    
    
  end
  
end
