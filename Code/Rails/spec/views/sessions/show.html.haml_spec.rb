require 'spec_helper'

describe "sessions/show" do
  before(:each) do
    @session = assign(:session, stub_model(Session,
      :username => "Username",
      :password => "Password"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Username/)
    rendered.should match(/Password/)
  end
end
