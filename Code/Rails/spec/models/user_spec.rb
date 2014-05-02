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
     #it 'returns the password' do
       ## setup
       #user = FactoryGirl.build(:user, password: 'test')

       ## excercise and verify
       #expect(user.password).to eq 'test'
    #end
    
    #it 'returns the email' do
      ## setup
      #user = FactoryGirl.build(:user, email: 'test')

      ## excercise and verify
      #expect(user.email).to eq 'test'
    #end
    
    #it 'returns the last name' do
      ## setup
      #user = FactoryGirl.build(:user, last_name: 'test')

      ## excercise and verify
      #expect(user.last_name).to eq 'test'
    #end
    
    #it 'returns the first name' do
      ## setup
      #user = FactoryGirl.build(:user, first_name: 'test')

      ## excercise and verify
      #expect(user.first_name).to eq 'test'
    #end
    

    


#testing a form 

#describe User do 
  #let :user do
  #build :user
  #end

  #subject do
  #user
  #end


#FactoryGirl.define do
  #factory :user do
    #email 'test@example.com'
    #password 'test'
    #first_name 'test'
    #last_name 'test'
  #end
#end





#context 'is invalid' do
  #it 'when required #email is not given' do
    #@user.email = ''  #added @
    #should_not be_valid 
  #end

  #it 'when required #password is not given' do
    #@user.password = '' #added @
    #should_not be_valid 
  #end

  #it 'when required #first_name is not given' do
    #@user.first_name = 'fdsafsda' # added@
    #@user.first_name should be_valid 
  #end
  
  #it 'when required #last_name is not given' do
    #@user.last_name = '' #added @
    #should_not be_valid
  #end
  
#end


 ##Prefix instance methods with a '#'
#describe User, 'first_name' do
  #it 'returns the first name' do
    ## setup
    #user = FactoryGirl.build(:user, first_name: 'test')

    ## excercise and verify
    #expect(user.first_name).to eq 'test'
  #end
#end 

#describe "when no first name is present" do
  #before { @user.first_name = " " }
  #it {should_not be_valid}
  ##it "is invalid" do
  ##first_name.valid?
  ##first_name.errors.full_messages.should eq []
  #end
 
  
#describe User, 'last_name' do
  #it 'returns the last name' do
    ## setup
    #user = FactoryGirl.build(:user, last_name: 'test')

    ## excercise and verify
    #expect(user.last_name).to eq 'test'
  #end
#end 

#describe "when no last name is present" do
  #before { @User.last_name = [] }
  #it {should_not be_valid}
#end

#describe User, 'email' do
  #it 'returns the email' do
    ## setup
    #user = FactoryGirl.build(:user, email: 'test')

    ## excercise and verify
    #expect(user.email).to eq 'test'
  #end
#end 

#describe "when no email is present" do
  #before { @user.email = [] }
  #it {should_not be_valid}
#end
  
#describe User, 'password' do
  #it 'returns the password' do
    ## setup
    #user = FactoryGirl.build(:user, password: 'test')

    ## excercise and verify
    #expect(user.password).to eq 'test'
  #end
#end

#describe "when no password is present" do
  #before { @user.password = [] }
  #it {should_not be_valid}
#end

#end
 #test if a user has a picture, the params are passed to it. If not, has a default picture that it returns.

#end TRYING THIS FOR A SECOND 
