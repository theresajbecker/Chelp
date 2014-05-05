require 'spec_helper'

describe "Link Bar" do

  describe "Link Bar on Every Page" do
 
      #if(current_user) 
      #permissions = ["USER", ADMIN]
    
      before(:each) do
          @test_user = User.create!(:first_name=>"test", :last_name=>"last", :email=>"test@test.com",:password=>"password", :permissions => "Admin")
      
          @webpages = ["/messages", "/charities", "/reports",
                   "/messages/new", "/users/new", "/charities/new", "/reports/new"]
                   
          @loginText = ["Chelp", "Login", "Sign Up!", "Contact Us", "Sign in with Google"]
          @logoutText = ["Chelp", "Logout", "Contact Us"]
      
      end
      
      it "should let me visit each webpage, log in, and log out" do
          @webpages.each do |webpage| 
      
              visit webpage 
      
              @loginText.each { |text| expect(page).to have_content(text) }
          
            #  fill_in "First Name", :with => @firstname
              click_link "Login"
              fill_in "Email Address", :with => @test_user.email
              fill_in "Password", :with => @test_user.password
              click_button "Sign in"
          
              #Login in here, Rspec Oath Shenanigans
          
              @logoutText.each { |text| expect(page).to have_content(text) }
              click_link "Logout"
          
              @loginText.each { |text| expect(page).to have_content(text) }
    
          end #do webpages
      end#it should
    end#describe
end
