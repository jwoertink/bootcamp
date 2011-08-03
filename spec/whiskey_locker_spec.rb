require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Bootcamp::WhiskeyLocker" do
  include Bootcamp::WhiskeyLocker
  let(:colors) { Bootcamp::WhiskeyLocker::COLORS }
  
  context "COLORS" do
    it "should be a constant hash of ANSI color values" do
      Bootcamp::WhiskeyLocker.constants.should include :COLORS
      colors.class.should equal Hash
      colors.each_value { |v| v.should match /[\e\[\dm]/ }
    end
  end
  
  context "root_location" do
    it "should point to the root location of the bootcamp project"
  end
  
  context "soundoff" do
    it "given 'test' as an argument, it should print out 'test' in white text" do
      capture(:stdout) { soundoff('test') }.chomp.should == "#{colors[:white]}test#{colors[:reset]}"
    end
    
    it "should print out yellow text when given as a second argument" do
      capture(:stdout) { soundoff('test', :yellow) }.chomp.should == "#{colors[:yellow]}test#{colors[:reset]}"
    end
  end
  
end
