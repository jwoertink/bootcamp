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
  
  context "generate" do
    it "should take a project name as an option, and return 'Generating test_project'" do
      options << "generate" << "test_project"
      capture(:stdout) { Bootcamp::Worker.start(options) }.should =~ /Generating test_project/
    end
    
    it "should display the project being generated notice"
    context "with jquery" do
      it "should generate templates using jquery"
    end
  end
  
end
