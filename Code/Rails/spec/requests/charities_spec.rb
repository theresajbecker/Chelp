require 'spec_helper'

describe "Charities" do
  describe "GET /charities" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get charities_path
      response.status.should be(200)
    end
  end
  
  describe "GET /charities/new" do
    it "Should Let me Fill Out a Name"
    it "Should Let me Fill Out a Description"
    it "Should Let me Fill Out Filter Flags"
    it "Should Let me Select Create"
    
    #get charities_path
  end
end
