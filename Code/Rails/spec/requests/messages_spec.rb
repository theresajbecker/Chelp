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
       #@message = Message.create!(id: "5", first_name: "test", last_name: "test", username: "test", email: "test", message: "test", created_at: "2012-04-23", updated_at: " 2012-04-23 22:30:14:16")
      #visit message_path(@message)
      #click_button "Submit"

      #p page.body
    end
    #before { visit messages_path } // same as below before(:each) visit 
  
    #before(:each) do
      #visit '/messages/new'
      #@firstname = "test first name"
      #@lastname = "test last name"
      #@username = "test username"
      #@email = "test email@email.com"
      #@message = "test Message"
    #end
      
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

    it "should let me fill out a message" do
      expect(page).to have_content("Message")
      fill_in "Message", :with => @message
    end

    it "should let me select the Send Button" do
      @message = Message.create!(id: "5", first_name: "test", last_name: "test", username: "test", email: "test", message: "test", created_at: "2012-04-23", updated_at: " 2012-04-23 22:30:14:16")
      expect(page).to have_button("Send")
      click_button "Send"
      expect(page).to have_content('Thank you for leaving feedback.')
    end 

#describe "GET /messages/1/edit" do
    #before do
      #vist '/messages'
        #@message = Message.create!(id: "5", first_name: "test", last_name: "test", username: "test", email: "test", message: "test", created_at: "2012-04-23", updated_at: " 2012-04-23 22:30:14:16")
      #visit message_path(@message)
      #click_button "Submit"

      #p page.body
    #end
  
      
  #end
      
  end
  
end
