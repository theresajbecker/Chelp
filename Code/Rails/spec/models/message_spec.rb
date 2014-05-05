require 'spec_helper'

describe Message do
	 before(:each) do
	 message = Message.new(:first_name => 'test', 
                    :last_name => 'test',
                    :message => 'test',
                    :email => 'test@example.com' )
    # message.save
                    
      end  
 
 it "should require a message" do
  Message.new(:message => "").should_not be_valid
 end  
 
 it "should require a first name" do
  Message.new(:first_name => "").should_not be_valid
 end  
 
 it "should require a last name" do
  Message.new(:last_name => "").should_not be_valid
 end  
 
 it "should require an email" do
  Message.new(:email => "").should_not be_valid
 end    
	
  end
    
