require 'spec_helper'

describe "sessions/new" do
  before(:each) do
    assign(:session, stub_model(Session,
      :username => "MyString",
      :password => "MyString"
    ).as_new_record)
  end

  it "renders new session form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sessions_path, "post" do
      assert_select "input#session_username[name=?]", "session[username]"
      assert_select "input#session_password[name=?]", "session[password]"
    end
  end
end
