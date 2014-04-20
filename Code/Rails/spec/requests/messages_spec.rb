require 'spec_helper'

describe "Messages" do
    
  describe "GET /messages" do
    it "Should have the content 'Listing messages'" do
      visit '/messages'
      expect(page).to have_content('Listing messages')
    end
  
  end
  
  describe "GET /messages/new" do
  
    before(:each) do
      visit '/messages/new'
      @firstname = "test first name"
      @lastname = "test last name"
      @username = "test username"
      @email = "test email@email.com"
      @message = "test Message"
    end
      
    it "should let me fill out a first name" do
      expect(page).to have_content("First Name")
      fill_in "First Name", :with => @firstname
    end
        
    it "should let me fill out a last name" do
      expect(page).to have_content("Last Name")
      fill_in "Last Name", :with => @lastname
    end

    it "should let me fill out a username" do
      expect(page).to have_content("Username")
      fill_in "Username", :with => @username
    end

    it "should let me fill out an email" do
      expect(page).to have_content("Email")
      fill_in "Email", :with => @email
    end

    it "should let me fill out a message" do
      expect(page).to have_content("Message")
      fill_in "Message", :with => @message
    end

    it "should let me select the Submit Button" do
      expect(page).to have_button("Submit")
      click_button "Submit"
      expect(page).to have_content('Message was successfully created.')

      #it "should let me go back home to message page" do
      #  click_link "Back"
      #  expect(page).to have_content('Listing messages')
      #end
      
      #it "should let me edit the message" do
      #  click_link "Edit"
      #  expect(page).to have_content('Editing message')
      #end
      
    end
  
  
  end
  
end
