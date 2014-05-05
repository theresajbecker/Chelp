require 'spec_helper'

describe "Charities" do

  describe "GET /charities" do
    it "Should have the content 'Filter'" do
      visit '/charities'
      expect(page).to have_content('Filter')
    end
  end
  
  describe "GET /charities/new" do
   
    before(:each) do
      visit '/charities/new'
    end
      
    it "should let me fill out a name" do
      expect(page).to have_content("Name")
      fill_in "Name", :with => "Test Name"
    end
        
    it "should let me fill out a description" do
      expect(page).to have_content("Description")
      fill_in "Description", :with => "Test Description"
    end
      
    it "should let me fill out Area of Impact" do
      expect(page).to have_content("Area of Impact")
      fill_in "Area of Impact", :with => "blah"
    end
    
    it "should let me select the Create Button" do
      expect(page).to have_button("Create")
      click_button "Create"
      #I am sure there is a clever way to roll this into one command ;D
      redirect_to '/charities'
      expect(page).to have_content('Create')
    end
  
  end
end
