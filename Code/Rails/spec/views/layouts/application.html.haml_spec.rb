require 'spec_helper'

describe 'layouts/application' do

  describe "Link Bar" do
  
    before(:each) do
      @loginText = ["Chelp", "Login", "Contact Us"]
      @logoutText = ["Chelp", "Logout", "Contact Us"]
    end
    
    it "should display links for when user logged in" do
   
      session[:user] = "test"
     
      #Test fails because Not Real User.  How to fix..
       
      render
      @logoutText.each { |text| rendered.should contain(text) }
    end
    
    it "should display links for when user not logged in" do
      session[:user] = nil
      render
      @loginText.each { |text| rendered.should contain(text) }
    end

  end

end
