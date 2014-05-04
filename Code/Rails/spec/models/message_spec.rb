require 'spec_helper'

describe Message do
	 before(:each) do
	 let(:message) { 
	 message = Message.new(:first_name => 'test', 
                    :last_name => 'test',
                    :password => 'test',
                    :username => 'test',
                    :email => 'test@example.com' 
                    )}

    describe "attributes" do

    it { expect(message).to validate_presence_of :email } 
    it { expect(message).to validate_uniqueness_of :email }
    
    it { expect(message).to validate_presence_of :username } 
    it { expect(message).to validate_uniqueness_of :username }
    
    it { expect(message).to validate_presence_of :password} 
    it { expect(message).to validate_uniqueness_of :password }

    it { expect(message).to validate_presence_of :first_name }
    
    it { expect(message).to validate_presence_of :last_name }
    
    it "saves are saved" do
      user.save!
      expect(user).to be_valid
    end
    
	end
  end
    
end
