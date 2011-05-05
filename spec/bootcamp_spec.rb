require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Bootcamp" do
  it "should go to bootcamp" do
    Bootcamp.intro.should == "Going to bootcamp"
  end
end
