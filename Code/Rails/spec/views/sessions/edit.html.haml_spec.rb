require 'spec_helper'

describe "sessions/edit" do
  before(:each) do
    @session = assign(:session, stub_model(Session,
      :username => "MyString",
      :password => "MyString"
    ))
  end

  it "renders the edit session form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", session_path(@session), "post" do
      assert_select "input#session_username[name=?]", "session[username]"
      assert_select "input#session_password[name=?]", "session[password]"
    end
  end
end
