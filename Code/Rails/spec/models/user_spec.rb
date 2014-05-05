require 'spec_helper'

describe User do
    before(:each) do
    user = User.new(:first_name => 'test', 
                    :last_name => 'test',
                    :password => 'test',
                    :email => 'test@example.com' 
                    )
    end
 it "should require a username" do
  User.new(:username => "").should_not be_valid
 end  
 
 it "should require a first name" do
  User.new(:first_name => "").should_not be_valid
 end  
 
 it "should require a last name" do
  User.new(:last_name => "").should_not be_valid
 end  
 
 it "should require an email" do
  User.new(:email => "").should_not be_valid
 end               

end
     
