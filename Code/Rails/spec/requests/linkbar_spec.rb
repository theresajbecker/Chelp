require 'spec_helper'

describe "Link Bar" do

  describe "Link Bar on Every Page" do
 
      #if(current_user) 
      #permissions = ["USER", ADMIN]
      test_user = User.create!(:first_name=>"test", :last_name=>"last", :password=>"password", :permissions => "ADMIN")
      
      @webpages = ["messages", "user", "charities", "reports",
                   "messages/new", "user/new", "charities/new", "reports/new"]
                   
      @loginText = ["Chelp", "Login", "Contact Us", "Sign in with Google"]
      @logoutText = ["Chelp", "Logout", "Contact Us"]
      
      @webpages.each do |webpage| 
      {
          visit '/' + webpage 
      
          @loginText.each { |text| expect(page).to have_content(text) }
          
        #  fill_in "First Name", :with => @firstname
          click_link "Login"
          fill_in "Username", :with => test_user.name
          fill_in "Password", :with => test_user.password
          click_button "Sign in"
          
          #Login in here, Rspec Oath Shenanigans
          
          @logoutText.each { |text| expect(page).to have_content(text) }
          click_link "Logout"
          
           @loginText.each { |text| expect(page).to have_content(text) }
      }
      
  
  end
end
