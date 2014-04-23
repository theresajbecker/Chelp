require 'spec_helper'

describe 'layouts/application' do

  describe "Link Bar" do
  
    before(:each) do
      @loginText = ["Chelp", "Login", "Contact Us"]
      @logoutText = ["Chelp", "Logout", "Contact Us"]
    end
    
    it "User is Logged in" do
      assign(:user, "test user")
      render
      render.should contain("test")
      @loginText.each { |text| rendered.should contain(text) }
    end
    
    it "User is Not Logged in" do
      assign(:user, nil)
      render
      @logoutText.each { |text| rendered.should contain(text) }
    end

  end

end
