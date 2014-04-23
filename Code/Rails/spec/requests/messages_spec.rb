require 'spec_helper'

describe "Messages" do
    
  describe "GET /messages" do
    it "Should have the content 'Listing messages'" do
      visit '/messages'
      expect(page).to have_content('Listing messages')
    end
  end
  
  describe "GET /messages/new" do
    #before { visit messages_path } // same as below before(:each) visit 
  
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
    end
      
  end   
      
  describe "GET /messages/1/edit" do
  
    before(:each) do
      visit '/messages/new'
      @firstname = "test first name"
      @lastname = "test last name"
      @username = "test username"
      @email = "test email@email.com"
      @message = "test Message"
      fill_in "First Name", :with => @firstname
      fill_in "Last Name", :with => @lastname
      fill_in "Username", :with => @username
      fill_in "Email", :with => @email
      fill_in "Message", :with => @message
      click_button "Submit"
    end

    it "should let me return to main page" do
      expect(page).to have_link("Back", :href=>"/messages")
      click_link("Back")
      expect(page).to have_content("Listing messages")
    end

    it "should let me edit the message" do
      expect(page).to have_link("Edit")
      click_link "Edit"
      expect(page).to have_content('Editing message')
    end

  end

end
        
#          expect(page).to have_link("Back", :href=>"/messages")
#          click_link("Back")
#          expect(page).to have_content("Listing messages")
        
 #     end
      
      
    #it "should let me edit the message" do
      #expect(page).to have_link("Edit")
      #click_link "Edit"
      #expect(page).to have_content('Editing message')
    #end
      
  
