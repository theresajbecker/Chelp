require 'spec_helper'

describe "messages/index" do
  before(:each) do
    assign(:messages, [
      stub_model(Message,
        :first_name => "First Name",
        :last_name => "Last Name",
        :username => "Username",
        :email => "Email",
        :message => "Message"
      ),
      stub_model(Message,
        :first_name => "First Name",
        :last_name => "Last Name",
        :username => "Username",
        :email => "Email",
        :message => "Message"
      )
    ])
  end

  it "renders a list of messages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Message".to_s, :count => 2
  end
end
