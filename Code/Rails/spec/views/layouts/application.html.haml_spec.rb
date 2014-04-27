require 'spec_helper'

describe 'layouts/application' do

  describe "Link Bar" do
   
    it "should display links for when user logged in" do

      @logoutText = ["Chelp", "Logout", "Contact Us"]
   
      #Creates Test User and Assigns ID to the session[:user] Param:
      new_user = User.create!(:first_name=>"blah", :picture=>"sequart.org/images/sleepy-kitty.jpg")
      session[:user] = new_user.id
      
      #Stubs Controller Methods from application.html.haml:
      controller.stub(:current_user_picture)
      controller.stub(:current_user)
      view.stub(:current_user_picture).and_return(new_user.picture)
      view.stub(:current_user).and_return(new_user)
      
      #Renders the Page and Iterates through the Text Checking for Keywords: 
      render
      @logoutText.each { |text| rendered.should contain(text) }
      
    end
    
    it "should display links for when user not logged in" do
      
      @loginText = ["Chelp", "Login", "Contact Us"]
   
      #Only Condition to Fail is session[:user] being nil
      session[:user] = nil
      
      #Renders the Page and Iterates through the Text Checking for Keywords: 
      render
      @loginText.each { |text| rendered.should contain(text) }
      
    end

  end

end
