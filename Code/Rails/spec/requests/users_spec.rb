require 'spec_helper'

describe "Users" do

describe " GET /user" do
  before do
      #vist '/messages'
        @user = User.create!(first_name: "test", last_name: "test", email: "test", password: "test")
      visit user_path(@user)
  #before (:each) do
  #    visit '/users/new'
   #   @firstname = "test first name"
    #  @lastname = "test last name"
     # @email = "test email@email.com"
      #@password = "test password"
      #click_button "Create"
    end 
      #click_button "Submit"

      #p page.body
    #end

    it "Should have the content 'Bio" do
      #visit users_path(@user)
      expect(page).to have_content('Bio')
	 end

   it "Should have the contest 'Reviews" do
      expect(page).to have_content("Reviews")
    end


    #it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #get users_path
      #response.status.should be(200)
    #end
  #end
end
end
