require 'spec_helper'

describe User do
    before do
      #vist '/messages'
        @user = User.create!(id: "5", first_name: "test", last_name: "test", username: "test", email: "test", message: "test", created_at: "2012-04-23", updated_at: " 2012-04-23 22:30:14:16")
      visit message_path(@message)
      #click_button "Submit"

      #p page.body
    end
   #f = user.new

   #it "has a valid factory" do
     #FactoryGirl.create(:user).should be_valid
   #end
   
   #it "is invalid without a first name" do 
     #FactoryGirl.build(:user, User id: nil, oauth_provider: nil, oauth_uid: nil, oauth_token: nil, oauth_expires_at: nil, first_name: nil, last_name: "Ankunding", gender: nil, picture: "http://http://2.bp.blogspot.com/-bQp0j6m1O7M/UEyE74...", email: "napoleon@bergewaters.org", password: "quodvitaeratione", permissions: nil, created_at: nil, updated_at: nil).should_not be_valid
   #end 
   

end
