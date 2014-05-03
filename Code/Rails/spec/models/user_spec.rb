require 'spec_helper'

describe User do
    before(:each) do
      #@user = User.create!(id: "5", first_name: "test", last_name: "test", email: "test@example.com", message: "test", created_at: "2012-04-23", updated_at: " 2012-04-23 22:30:14:16")
      #@user = User.create!(:id=>"5", :first_name=>"test", :last_name=>"test", :email=>"test@example.com", :message=>"test", :created_at =>"2012-04-23", :updated_at=> "2012-04-23 22:30:14:16")
      
    let(:user) { 
    user = User.new(:first_name => 'test', 
                    :last_name => 'test',
                    :password => 'test',
                    :email => 'test@example.com' 
                    )}

    describe "attributes" do

    it { expect(user).to validate_presence_of :email } 
    it { expect(user).to validate_uniqueness_of :email }
    
    it { expect(user).to validate_presence_of :password} 
    it { expect(user).to validate_uniqueness_of :password }

    it { expect(user).to validate_presence_of :first_name }
    
    it { expect(user).to validate_presence_of :last_name }
    

    it "saves are saved" do
      user.save!
      expect(user).to be_valid
    end
   end
end
end
     
