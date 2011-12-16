require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Bootcamp::Depot" do
  include Bootcamp::Depot::Helpers
    
  context "jshq_config" do
    it "should return a hash" do
      jshq_config.should be_a_kind_of Hash
    end
    
    it "should contain a source key" do
      jshq_config["source"].should_not be nil
      jshq_config["source"].should == jshq_url
    end
    
    it "should contain an authentication_token key" do
      jshq_config["authentication_token"].should_not be nil
      jshq_config["authentication_token"].should == authentication_token
    end
  end
  
  context "hash_as_pretty_json_string" do
    before(:each) do
      @hash = {"name" => "value", "description" => "another value"}
    end
    
    it "should take a hash as an argument and return a string" do
      hash_as_pretty_json_string(@hash).should be_a_kind_of String
    end
    
    it "should format like a pretty json format" do
      pretty = %{{\n\t"name": "value",\n\t"description": "another value"\n}}
      hash_as_pretty_json_string(@hash).should == pretty
    end
    
  end

  
end
