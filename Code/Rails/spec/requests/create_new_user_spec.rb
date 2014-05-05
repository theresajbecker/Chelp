require 'spec_helper'

describe "Users" do
    
  describe "GET /users" do
    it "Should have the content 'Listing messages'" do
      visit '/messages'
      expect(page).to have_content('Listing messages')
    end
  end

describe "GET /users/new" do
    #before { visit messages_path } // same as below before(:each) visit 
  
    before(:each) do
      visit '/users/new'
      @firstname = "test first name"
      @lastname = "test last name"
      @email = "test email@email.com"
      @password = "test password"
    end 
 
    it "should let me fill out a first name" do
      expect(page).to have_content("First Name")
      fill_in "First Name", :with => @firstname
    end
        
    it "should let me fill out a last name" do
      expect(page).to have_content("Last Name")
      fill_in "Last Name", :with => @lastname
    end

    it "should let me fill out an email" do
      expect(page).to have_content("Email")
      fill_in "Email", :with => @email
    end

    it "should let me fill out an password" do
      expect(page).to have_content("Password")
      fill_in "Password", :with => @password
    end

    it "should let me select the Create Button" do
      expect(page).to have_button("Create")
      click_button "Create"
      redirect_to '/charities'
      expect(page).to have_content('Chelp')
    end 

  end 

end 

