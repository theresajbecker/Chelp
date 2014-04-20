require 'spec_helper'

describe "Charities" do
  describe "GET /charities" do
    it "Should have the content 'All Charities'" do
    	visit '/charities'
    	expect(page).to have_content('All Charities')
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #get charities_path
      #response.status.should be(200)
    end
  end
end
