require 'spec_helper'

describe "reports/edit" do
  before(:each) do
    @report = assign(:report, stub_model(Report,
      :user => nil,
      :message => "MyString"
    ))
  end

  it "renders the edit report form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", report_path(@report), "post" do
      assert_select "input#report_user[name=?]", "report[user]"
      assert_select "input#report_message[name=?]", "report[message]"
    end
  end
end
