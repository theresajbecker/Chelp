require 'spec_helper'

describe "messages/show" do
  before(:each) do
    @message = assign(:message, stub_model(Message,
      :first_name => "First Name",
      :last_name => "Last Name",
      :username => "Username",
      :email => "Email",
      :message => "Message"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Username/)
    rendered.should match(/Email/)
    rendered.should match(/Message/)
  end
end
